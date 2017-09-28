" ----------------------------------------------------------------------------
"   Plug
" ----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

" Colorschemes
" Plug 'captbaritone/molokai'
" Plug 'altercation/vim-colors-solarized'
Plug 'ajh17/spacegray.vim'

" Navigate files in sidebar, with fancy icons
Plug 'scrooloose/nerdtree'

" Fancy status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" I think this makes sure I'm using the correct syntax?
" Plug 'vim-syntastic/syntastic'

" Fast file search
Plug 'rking/ag.vim'

" Tab autocompletion
Plug 'ervandew/supertab'

" Easy Commenting
Plug 'scrooloose/nerdcommenter'

" Vim-pencil - for writing!
Plug 'reedes/vim-pencil'

" Syntax checking for multiple languages
Plug 'sheerun/vim-polyglot'

" Auto-completion
Plug 'Shougo/neocomplete.vim'

" Removes all buffers but current
Plug 'vim-scripts/BufOnly.vim'

" Autoclose plugin
Plug 'Townk/vim-autoclose'

" Make javascript look good?
Plug 'maksimr/vim-jsbeautify'

call plug#end()

" Configuration Section
" *********************

" NERDTree config
map <C-n> :NERDTreeToggle<CR>

" Show linenumbers
set number
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Enable Elite mode, No ARRRROWWS!!!!
" let g:elite_mode=1

" Enable highlighting of the current line
set cursorline

" fix cursor display in cygwin
if has("win32unix")
    let &t_ti.="\e[1 q"
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[1 q"
    let &t_te.="\e[0 q"
endif

" mouse support, nice for windows
set mouse=a

" Theme and Styling 
set t_Co=256
set background=dark

if (has("termguicolors"))
  set termguicolors
endif

if &term == "screen"
  set t_Co=256
endif

let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme spacegray

let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

" Font configuration
set encoding=utf-8
let g:Powerline_symbols = 'fancy'

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
	nnoremap <Up>    :resize +2<CR>
	nnoremap <Down>  :resize -2<CR>
	nnoremap <Left>  :vertical resize +2<CR>
	nnoremap <Right> :vertical resize -2<CR>
endif
