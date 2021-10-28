set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
Plugin 'raimondi/delimitmate'
Plugin 'liuchengxu/vista.vim'
Plugin 'cocopon/iceberg.vim'
Plugin 'metalelf0/supertab'
Plugin 'Valloric/ListToggle'

call vundle#end()
filetype plugin indent on

""List Toggle
let g:lt_location_list_toggle_map = '<C-l>'

""Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_cpp_compiler_options = '-std=c++11'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""YCM
let g:ycm_show_diagnostics_ui = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

""Macros and Commands
syntax on
colorscheme iceberg
set cursorline
set list lcs=tab:\|\ 
set number
set tabstop=4
set t_Co=256
set showmatch
map <C-t> :NERDTreeToggle<CR>
set comments=sl:/*,mb:\ *,elx:\ */
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
