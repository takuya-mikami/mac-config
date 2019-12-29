runtime! debian.vim

"colorscheme murphy
colorscheme molokai
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

" 行番号を表示
"set number

"日本語対応
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

"全角記号対応
set ambiwidth=double

"ハイライトサーチ有効
set hlsearch

"Esc二回でハイライトサーチ解除
nmap <Esc><Esc> :nohlsearch<Cr><Esc>

" clipboard
set clipboard=unnamed

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
set nocompatible
set backspace=indent,eol,start

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
autocmd FileType * setlocal formatoptions-=ro
