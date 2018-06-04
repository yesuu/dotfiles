set nocompatible "不兼容vi
set t_Co=256 "256色
set title "显示标题
set mouse=a "启用鼠标
set belloff=all "不发出滴滴声
set ttimeoutlen=100 "等待时间
set history=512 "历史
set nobackup "不备份
set showcmd "输入的命令显示出来
set showmode "显示当前模式
set ruler "显示右下角
set nonu "不显示行号
set cursorline "高亮当前行
set linebreak "更智能的自动折行显示
set wildmenu "更好的命令补全
set display=lastline "不显示@
set completeopt=menu "不显示补全预览窗口
set scrolloff=3 "滚动时光标与边界的距离
set listchars=tab:\|\ ,trail:· "空白字符
set fillchars=vert:·,fold:- "分割线
set encoding=utf-8 "编码
let mapleader=" "
nmap <F7> :setlocal nu!<CR>

"编码解析顺序
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,latin1

set tabstop=4 "tab的大小
set softtabstop=4 "一次删除多少空格
set shiftwidth=4 "缩进大小
set noexpandtab "不把tab转换成空格
set smartindent "自动缩进，一般缩进与上一行一样，但遇到括号时清除缩进
"设置缩进风格为两个空格
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd BufRead,BufNewFile *.tsx setlocal ts=2 sts=2 sw=2 expandtab
"两个空格，但tab还是四个空格长度的tab，和`:retab`配合，可以把空格和tab混用的代码格式化成只用空格
nmap <Leader>1 :setlocal ts=4 sts=2 sw=2 expandtab<CR>
"两个空格，打tab会自动转换成空格
nmap <Leader>2 :setlocal ts=2 sts=2 sw=2 expandtab<CR>
"两个空格长度的tab
nmap <Leader>3 :setlocal ts=2 sts=2 sw=2 noexpandtab<CR>
"四个空格长度的tab
nmap <Leader>4 :setlocal ts=4 sts=4 sw=4 noexpandtab<CR>
"四个空格，打tab会自动转换成空格
nmap <Leader>5 :setlocal ts=4 sts=4 sw=4 expandtab<CR>
"按照视觉上的效果，缩进转换成当前配置
nmap <Leader>0 :retab<CR>

"插件和语法高亮
filetype plugin indent on
syntax enable
syntax on

"Esc
imap ,, <Esc>
vmap ,, <Esc>
"命令快捷键
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>a :qa<CR>
"系统剪切板
nmap <Leader>p "+p
nmap <Leader>y "+y
nmap <Leader>d "+d
vmap <Leader>p "+p
vmap <Leader>y "+y
vmap <Leader>d "+d
"创建空行而不进入插入模式
nmap go o<Esc>
nmap gO O<Esc>
"内置补全
imap <Tab>o <C-x><C-o>
imap <Tab>f <C-x><C-f>
imap <Tab>l <C-x><C-l>
"空白字符
nmap <Leader>l :set list!<CR>
"shell
nmap <C-`> :split<CR>:terminal<CR>i
imap <C-`> <C-o>:split<CR><C-o>:terminal<CR>
"窗口
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
" 切换到当前目录
nmap <F1> :cd %:h<CR>

autocmd Filetype *
		\	if &omnifunc == "" |
		\		setlocal omnifunc=syntaxcomplete#Complete |
		\	endif

"vim-go
let g:go_fmt_command = "goimports"
let g:go_gocode_unimported_packages = 1
let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet']
let g:go_metalinter_enabled = ['megacheck']
"emmet
let g:user_emmet_leader_key = '<Tab>'
let g:user_emmet_install_command = 0
let g:user_emmet_mode = 'iv'
"Tagbar
nmap <Leader>t :TagbarToggle<CR>
"NERDTree
nmap <Leader>n :NERDTreeToggle<CR>
