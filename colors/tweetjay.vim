" {{{
"   Name:        tweetjay
"   Author:      tweetjay <tweetjay2@icloud.com>
"   Url:         https://github.com/tweetjay/vim-tweetjay
"   License:     The MIT License (MIT)
"
"   This theme is inspired by https://github.com/sonph/onehalf/tree/master/vim
"   Code licensed under the MIT license
"   http://zenorocha.mit-license.org
" }}}

highlight clear
syntax reset

let g:colors_name  = 'tweetjay'
let colors_name    = 'tweetjay'

" General color definition {{{
let s:black        = { 'gui': '#171717', 'cterm': '232' }
let s:lightBlack   = { 'gui': '#3A3A3A', 'cterm': '234' }
let s:grey         = { 'gui': '#404040', 'cterm': '240' }
let s:red          = { 'gui': '#e06c75', 'cterm': '160' }
let s:green        = { 'gui': '#2F8A71', 'cterm': '114' }
let s:yellow       = { 'gui': '#d0c81b', 'cterm': '180' }
let s:blue         = { 'gui': '#365C8A', 'cterm': '075' }
let s:purple       = { 'gui': '#c678dd', 'cterm': '177' }
let s:cyan         = { 'gui': '#56b6c2', 'cterm': '073' }
let s:white        = { 'gui': '#E3E3E7', 'cterm': '188' }
let s:magenta      = { 'gui': '#FF00FF', 'cterm': '199' }
let s:magenta_dark = { 'gui': '#C000C0', 'cterm': '198' }
" }}}

" General color assignment {{{
let s:fg           = { 'gui': s:white.gui, 'cterm': '255' }
let s:bg           = { 'gui': '#353D48', 'cterm': '236' }

let s:grey_background   = { 'gui': '#2F3031', 'cterm': s:black.cterm }

let s:background   = s:grey_background
let s:comment_fg   = { 'gui': '#808080', 'cterm': '242' }

let s:identifier   = { 'gui': '#DAD8DC', 'cterm': s:white.cterm }
let s:type         = { 'gui': '#157FFF', 'cterm': s:blue.cterm }
let s:function     = { 'gui': '#F5A273', 'cterm': '215' } " function calls
let s:keyword      = { 'gui': '#FF00FF', 'cterm': s:magenta.cterm } " public class, extension
let s:statement    = { 'gui': '#7F9FD1', 'cterm': '074' }
let s:title        = { 'gui': '#157FFF', 'cterm': s:blue.cterm }

let s:gutter_bg    = { 'gui': '#282c34', 'cterm': '236' }
let s:gutter_fg    = { 'gui': '#919baa', 'cterm': '247' }

let s:cursor       = { 'gui': '#00FFF0', 'cterm': '237' }
let s:cursor_line  = { 'gui': '#1D1E1D', 'cterm': '235' }
let s:color_col    = { 'gui': s:grey.gui, 'cterm': s:grey.cterm }

let s:match        = { 'gui': '#FD971F', 'cterm': '239' }
let s:selection    = { 'gui': '#505050', 'cterm': '239' }
let s:vertsplit    = { 'gui': '#808080', 'cterm': '237' }

let s:diff_add_bg    = { 'gui': '#275B42', 'cterm': '022' }
let s:diff_change_bg = { 'gui': '#505050', 'cterm': '239' }
let s:diff_delete    = { 'gui': '#D94E00', 'cterm': '188' }
let s:diff_delete_bg = { 'gui': '#5D2B2F', 'cterm': '160' }
let s:diff_text_bg   = { 'gui': '#309157', 'cterm': '071' }
" }}}

" Use this function to assign colors to a group all in one {{{
function! s:h(group, fg, bg, attr)
  if type(a:fg) == type({})
    exec 'hi ' . a:group . ' guifg=' . a:fg.gui . ' ctermfg=' . a:fg.cterm
  else
    exec 'hi ' . a:group . ' guifg=NONE cterm=NONE'
  endif
  if type(a:bg) == type({})
    exec 'hi ' . a:group . ' guibg=' . a:bg.gui . ' ctermbg=' . a:bg.cterm
  else
    exec 'hi ' . a:group . ' guibg=NONE ctermbg=NONE'
  endif
  if a:attr !=? ''
    exec 'hi ' . a:group . ' gui=' . a:attr . ' cterm=' . a:attr
  else
    exec 'hi ' . a:group . ' gui=NONE cterm=NONE'
  endif
endfun
" }}}

" User interface colors {{{
call s:h('Normal',         s:fg, s:background, '')
call s:h('NonText',        s:fg, '', '')

call s:h('Cursor',         s:bg, s:cursor, '')
call s:h('CursorColumn',   '', s:cursor_line, '')
call s:h('CursorLine',     '', s:cursor_line, '')

call s:h('LineNr',         s:gutter_fg, s:gutter_bg, '')
call s:h('CursorLineNr',   s:fg, '', '')

call s:h('DiffAdd',        s:white, s:diff_add_bg, '')
call s:h('DiffChange',     s:white, s:diff_change_bg, '')
call s:h('DiffDelete',     s:diff_delete, s:diff_delete_bg, '')
call s:h('DiffText',       s:white, s:diff_text_bg, '')

call s:h('IncSearch',      s:bg, s:yellow, '')
call s:h('Search',         s:bg, s:yellow, '')

call s:h('ErrorMsg',       s:fg, '', '')
call s:h('ModeMsg',        s:fg, '', '')
call s:h('MoreMsg',        s:fg, '', '')
call s:h('WarningMsg',     s:red, '', '')
call s:h('Question',       s:purple, '', '')

call s:h('Pmenu',          s:bg, s:fg, '')
call s:h('PmenuSel',       s:fg, s:blue, '')
call s:h('PmenuSbar',      '', s:selection, '')
call s:h('PmenuThumb',     '', s:fg, '')

call s:h('SpellBad',       s:red, '', '')
call s:h('SpellCap',       s:yellow, '', '')
call s:h('SpellLocal',     s:yellow, '', '')
call s:h('SpellRare',      s:yellow, '', '')

call s:h('StatusLine',     s:fg, s:blue, '')
call s:h('StatusLineNC',   s:fg, s:blue, '')
call s:h('TabLine',        s:comment_fg, s:cursor_line, '')
call s:h('TabLineFill',    s:comment_fg, s:cursor_line, '')
call s:h('TabLineSel',     s:fg, s:bg, '')

call s:h('Visual',         '', s:selection, '')
call s:h('VisualNOS',      '', s:selection, '')

call s:h('ColorColumn',    '', s:color_col, '')
call s:h('Conceal',        s:fg, '', '')
call s:h('Directory',      s:blue, '', '')
call s:h('VertSplit',      s:vertsplit, s:vertsplit, '')
call s:h('Folded',         s:fg, '', '')
call s:h('FoldColumn',     s:fg, '', '')
call s:h('SignColumn',     s:fg, '', '')

call s:h('MatchParen',     s:background, s:match, '')
call s:h('SpecialKey',     s:fg, '', '')
call s:h('Title',          s:title, '', 'bold')
call s:h('WildMenu',       s:fg, '', '')
" }}}

" Set dark background {{{
set background=dark
" }}}

" Syntax colors {{{
call s:h('Comment',        s:comment_fg, '', '')
call s:h('Constant',       s:cyan, '', '')
call s:h('String',         s:green, '', '')
call s:h('Character',      s:green, '', '')
call s:h('Number',         s:yellow, '', '')
call s:h('Boolean',        s:yellow, '', '')
call s:h('Float',          s:yellow, '', '')

call s:h('Identifier',     s:identifier, '', '')
call s:h('Function',       s:function, '', '')
call s:h('Statement',      s:statement, '', '')

call s:h('Conditional',    s:purple, '', '')
call s:h('Repeat',         s:purple, '', '')
call s:h('Label',          s:purple, '', '')
call s:h('Operator',       s:fg, '', '')
call s:h('Keyword',        s:keyword, '', '')
call s:h('Exception',      s:purple, '', '')

call s:h('PreProc',        s:yellow, '', '')
call s:h('Include',        s:blue, '', '')
call s:h('Define',         s:purple, '', '')
call s:h('Macro',          s:purple, '', '')
call s:h('PreCondit',      s:yellow, '', '')

call s:h('Type',           s:type, '', '')
call s:h('StorageClass',   s:yellow, '', '')
call s:h('Structure',      s:yellow, '', '')
call s:h('Typedef',        s:yellow, '', '')

call s:h('Special',        s:blue, '', '')
call s:h('SpecialChar',    s:fg, '', '')
call s:h('Tag',            s:fg, '', '')
call s:h('Delimiter',      s:fg, '', '')
call s:h('SpecialComment', s:fg, '', '')
call s:h('Debug',          s:fg, '', '')
call s:h('Underlined',     s:fg, '', '')
call s:h('Ignore',         s:fg, '', '')
call s:h('Error',          s:red, s:gutter_bg, '')
call s:h('Todo',           s:purple, '', '')
" }}}

" Plugins {{{
" GitGutter
call s:h('GitGutterAdd',           s:green, s:gutter_bg, '')
call s:h('GitGutterDelete',        s:red, s:gutter_bg, '')
call s:h('GitGutterChange',        s:yellow, s:gutter_bg, '')
call s:h('GitGutterChangeDelete',  s:red, s:gutter_bg, '')
" Fugitive
call s:h('diffAdded',              s:green, '', '')
call s:h('diffRemoved',            s:red, '', '')
" }}}

" Git {{{
call s:h('gitcommitComment',       s:comment_fg, '', '')
call s:h('gitcommitUnmerged',      s:red, '', '')
call s:h('gitcommitOnBranch',      s:fg, '', '')
call s:h('gitcommitBranch',        s:purple, '', '')
call s:h('gitcommitDiscardedType', s:red, '', '')
call s:h('gitcommitSelectedType',  s:green, '', '')
call s:h('gitcommitHeader',        s:fg, '', '')
call s:h('gitcommitUntrackedFile', s:cyan, '', '')
call s:h('gitcommitDiscardedFile', s:red, '', '')
call s:h('gitcommitSelectedFile',  s:green, '', '')
call s:h('gitcommitUnmergedFile',  s:yellow, '', '')
call s:h('gitcommitFile',          s:fg, '', '')

hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile
" }}}

" Fix colors in neovim terminal buffers {{{
if has('nvim')
  let g:terminal_color_0          = s:black.gui
  let g:terminal_color_1          = s:red.gui
  let g:terminal_color_2          = s:green.gui
  let g:terminal_color_3          = s:yellow.gui
  let g:terminal_color_4          = s:blue.gui
  let g:terminal_color_5          = s:purple.gui
  let g:terminal_color_6          = s:cyan.gui
  let g:terminal_color_7          = s:white.gui
  let g:terminal_color_8          = s:black.gui
  let g:terminal_color_9          = s:red.gui
  let g:terminal_color_10         = s:green.gui
  let g:terminal_color_11         = s:yellow.gui
  let g:terminal_color_12         = s:blue.gui
  let g:terminal_color_13         = s:purple.gui
  let g:terminal_color_14         = s:cyan.gui
  let g:terminal_color_15         = s:white.gui
  let g:terminal_color_background = s:bg.gui
  let g:terminal_color_foreground = s:fg.gui
elseif has('terminal')
  let g:terminal_ansi_colors = [
        \ '#090300',
        \ '#db2d20',
        \ '#01a252',
        \ '#fded02',
        \ '#01a0e4',
        \ '#a16a94',
        \ '#b5e4f4',
        \ '#a5a2a2',
        \ '#5c5855',
        \ '#db2d20',
        \ '#01a252',
        \ '#fded02',
        \ '#01a0e4',
        \ '#a16a94',
        \ '#b5e4f4',
        \ '#f7f7f7',
        \ ]
endif
" }}}
