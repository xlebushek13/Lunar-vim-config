-- Config for lunarvim created by xlebushek
-- Transparent window

lvim.transparent_window = false

-- Log level

lvim.log.level = "warn"

-- Disable open file in common os programm by pressing 's' - confilcts with keybindings

lvim.builtin.nvimtree.setup.view.mappings.list = {
  { key = "s", action = "" },
}

-- Auto format

lvim.format_on_save = false

lvim.builtin.notify.active = true

-- Lualine style

lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.sections.lualine_c = {"filename", "diff", "diagnostics"}

-- Color scheme

lvim.colorscheme = "base16-onedark"

-- Configure bufferline

lvim.builtin.bufferline.transparent_window = true

-- Lualine colorscheme require for some colorschemes

-- lvim.builtin.lualine.options.theme = "gruvbox"

-- Disable auto installing lsp if you Enable this rust-tools dont works

lvim.lsp.automatic_servers_installation = false

-- Leader keybinding

lvim.leader = "space"

-- Disable treesitter ident in python yaml and rust

lvim.builtin.treesitter.indent = { enable = true, disable = { "yaml", "python", "rust" } }

-- Activate terminal

lvim.builtin.terminal.active = true

-- Configure nvimtree

-- lvim.builtin.nvimtree.transparent = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- Disable column at left of screen

vim.opt.signcolumn = "yes"

-- Disable highlight current line

vim.opt.cursorline = false

-- True colors for term

vim.opt.termguicolors = true

-- Disable numbers

vim.opt.number = false

-- Enable word wrap

vim.opt.wrap = true

-- Disable autoident while paste code

vim.cmd('set nopaste')

-- Set spell lang and turn it off

vim.cmd('set spelllang = "en, ru"')
lvim.builtin.spell = false
vim.opt.spell = false

-- Colors for raibow parents

lvim.builtin.treesitter.rainbow = {
  enable = true,
  colors = {
    "#9ece6a",
    "#f7768e",
    "#7aa2f7",
    "#b4f9f8",
  },
  disable = { "html","php" },
}

-- Installed treesitter languages

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "pug",
  "yaml",
}

-- Dont install treesitter for haskel

lvim.builtin.treesitter.ignore_install = { "haskell" }

lvim.autocommands = {
  {
    "BufWinEnter",
    {
      pattern = { "*.json" },
      command = ":IndentLinesToggle",
    }
  },
  {
    "BufWinEnter",
    {
      pattern = { "Cargo.toml" },
      command = ":CratesToggle",
    }
  },
}

-- Enable treesitter

lvim.builtin.treesitter.highlight.enabled = true

-- Disable highlight keybinding

vim.cmd("map <esc> :noh <CR>")

-- Surround keybindings

vim.cmd('vmap s" c""<ESC>P')
vim.cmd("vmap s' c''<ESC>P")
vim.cmd("vmap s( c()<ESC>P")
vim.cmd("vmap s{ c{}<ESC>P")
vim.cmd("vmap s[ c[]<ESC>P")
vim.cmd("vmap s< c<><ESC>P")

-- Git keybindings

lvim.builtin.which_key.mappings["ga"] = { '<Cmd>execute v:count . "ToggleTerm"<CR> git add .<CR>', "Git add an toggle term" }
lvim.builtin.which_key.mappings["gd"] = { "Git diff" }
vim.cmd("nmap <Space>gd :Git diff<CR>")

-- Ease find and replace keybinding

vim.cmd("nnoremap sa viw:lua require'spectre'.open_file_search()<CR>")

-- Add ending for lines in visual mode keybinding like ; in end of line

vim.cmd("vmap A :normal A")

-- Resize window keybindings

vim.cmd('nmap swl :vertical resize +10<CR>')
vim.cmd('nmap swh :vertical resize -10<CR>')

vim.cmd('nmap swk :resize +10<CR>')
vim.cmd('nmap swj :resize -10<CR>')

-- Remove and paste without copy to buffer

vim.cmd('nnoremap d "_d')
vim.cmd('nnoremap <Space>d d')

vim.cmd('vnoremap p "_dP')

-- Insert current date keybinding

vim.cmd('nmap sD i<C-R>=strftime("%Y-%m-%d %a %H:%M")<CR><Esc>')

-- Run python file

vim.cmd("nmap sp :!python3 %<CR>")

-- Rust keybindings

vim.cmd('nmap srr <Cmd>execute v:count . "ToggleTerm"<CR> cargo run<CR>')
vim.cmd('nmap sru :CratesUp<CR>')
vim.cmd('nmap srb <Cmd>execute v:count . "ToggleTerm"<CR> cargo build<CR>')
vim.cmd('nmap srt <Cmd>execute v:count . "ToggleTerm"<CR> cargo test<CR>')
vim.cmd('nmap src <Cmd>execute v:count . "ToggleTerm"<CR> cargo check<CR>')
vim.cmd("nmap sd :RustHoverActions<CR>")
vim.cmd("nmap sR :RustRunnables<CR>")
vim.cmd("nmap sc :RustOpenCargo<CR>")

-- Markdown preview keybindings

vim.cmd('nmap smg :Glow<CR>')
vim.cmd('nmap smp :MarkdownPreview<CR>')

-- Navigate buffers

 lvim.keys.normal_mode = {
["<Tab>"] = ":bnext<CR>",
["<S-Tab>"] = ":bprevious<CR>",
["<C-s>"] = ":w<cr>"
 }

-- Buffers edit

vim.cmd("nmap te :tabedit ")

-- Split windows

vim.cmd("nmap ss :split<Return><leader>w")
vim.cmd("nmap sv :vsplit<Return><leader>w")

-- Move windov

vim.cmd("nmap <Space><C-w>w")
vim.cmd("map s<left> <C-w>h")
vim.cmd("map s<up> <C-w>k")
vim.cmd("map s<down> <C-w>j")
vim.cmd("map s<right> <C-w>l")
vim.cmd("map sh <C-w>h")
vim.cmd("map sk <C-w>k")
vim.cmd("map sj <C-w>j")
vim.cmd("map sl <C-w>l")
vim.cmd('vmap s" c""<Esc>P')
vim.cmd('vmap s( c()<Esc>P')
vim.cmd("vmap s' c''<Esc>P")
vim.cmd('vmap s< c<><Esc>P')

-- Sneak conf

vim.cmd("map f <Plug>Sneak_s")
vim.cmd("map F <Plug>Sneak_S")
vim.cmd("let g:sneak#label = 1")

-- Folding

vim.cmd("let g:indentLine_char = '│'")

vim.cmd("map sf zfit")
vim.cmd("map so za")

-- Slect all

vim.cmd("vmap <C-a> vgg<S-v>G")

-- Delete word backwards

vim.cmd('nnoremap dw vb"_di')

-- Open projects

vim.cmd("nmap st :lua require'telescope'.extensions.project.project{}<CR>")

-- Settings for gitgutter

vim.cmd("let g:gitgutter_async=0")
vim.cmd("let g:gitgutter_max_signs = 2000")

-- Formaters for languages

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "rustfmt",
    filetypes = { "rust", "rs" },
  },
}


-- Linters

-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
  -- {
  --   exe = "eslint_d",
  --   filetypes = {
  --     "javascriptreact",
  --     "javascript",
  --     "typescriptreact",
  --     "typescript",
  --     "vue",
  --   },
  --   },
-- {
--     exe = "flake8",
--     filetypes = {
--       "python",
--     },
--   },
-- }

-- Path for language switcher lib

vim.cmd("let g:XkbSwitchLib = '/usr/local/bin/libInputSourceSwitcher.dylib'")
vim.cmd("let g:XkbSwitchEnabled = 1")

-- Override lsp servers
require("lvim.lsp.manager").setup("pylsp")
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, {"rust_analyzer"})

-- Extra plugins

lvim.plugins = {

  -- Themes

  {
    "briones-gabriel/darcula-solid.nvim",
    requires = "rktjmp/lush.nvim"
  },

  {
    "doums/darcula"
  },

  -- {
  --   "folke/tokyonight.nvim"
  -- },

  -- {
  --   "ful1e5/onedark.nvim",
  --   config = function ()
  --     require("onedark").setup({
  --       function_style = "italic",
  -- -- sidebars = {"qf", "vista_kind", "terminal", "packer"},
  -- -- Change the "hint" color to the "orange0" color, and make the "error" color bright red

  -- -- Overwrite the highlight groups
  --       overrides = function(c)
  --         return {
  --           htmlTag = {
  --             fg = c.red0,
  --             bg = "#282c34",
  --             sp = c.hint,
  --             style = "underline"
  --           },
  --           DiagnosticHint = {
  --             link = "LspDiagnosticsDefaultHint"
  --           },
  --         -- this will remove the highlight groups
  --           TSField = {},
  --         }
  --       end
  --     })
  --   end
  -- },

  {
    "RRethy/nvim-base16"
  },

-- Indent Guides

  {
    "Yggdroot/indentLine",
  },

  -- RustTools and lsp

  {
    "simrat39/rust-tools.nvim",
    config = function()
      require("rust-tools").setup({
        tools = {
          autoSetHints = true,
          hover_with_actions = true,
          runnables = {
            use_telescope = true,
          },
          hover_actions = {
            auto_focus = false
          },
        },
        server = {
          cmd = { vim.fn.stdpath "data" .. "/lsp_servers/rust-tools/rust-analyzer" },
          on_attach = require("lvim.lsp").common_on_attach,
          on_init = require("lvim.lsp").common_on_init,
        },
        })
    end,
    ft = { "rust", "rs" },
  },

  -- Markdown preview

  {
    "npxbr/glow.nvim",
    ft = {"markdown"}
    -- run = "yay -S glow"
  },

  {
    'iamcco/markdown-preview.nvim',
    -- after install use :call mkdp#util#install() or uncomment config lines
    -- run = "cd app && npm install",
    -- ft = "markdown",
    -- config = function()
    --   vim.g.mkdp_auto_start = 1
    -- end,

  },

  -- Switch language in normal mode for russian

  {
    "lyokha/vim-xkbswitch"
  },

  -- Git helper

  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit"
    },
    ft = {"fugitive"}
  },

  -- Auto close tags

  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require'nvim-treesitter.configs'.setup {
        autotag = {
          enable = true,
          filetypes = { "html" , "xml", "php" },
        }
      }
    end,
  },

  -- Rainbow parents

  {
    "p00f/nvim-ts-rainbow",
    config = function()
      require("nvim-treesitter.configs").setup {
        rainbow = {
          enable = true,
          extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
          max_file_lines = nil, -- Do not enable for files with more than n lines, int
        }
      }
    end,
  },

  -- Tabnine completion

  {
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },

  -- Manage project

  {
    "nvim-telescope/telescope-project.nvim",
    event = "BufWinEnter",
    setup = function()
      vim.cmd [[packadd telescope.nvim]]
    end,
  },

  -- Hilight colors like #000000

  {
    "norcalli/nvim-colorizer.lua",
      config = function()
        require("colorizer").setup({ "*" }, {
            RGB = true, -- #RGB hex codes
            RRGGBB = true, -- #RRGGBB hex codes
            RRGGBBAA = true, -- #RRGGBBAA hex codes
            rgb_fn = true, -- CSS rgb() and rgba() functions
            hsl_fn = true, -- CSS hsl() and hsla() functions
            css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
            css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
            })
    end,
  },

  -- Struct for code

  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
  },

  -- Hilight todo like TODO:

  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },

  -- Fast mooving

  {
    "justinmk/vim-sneak"
  },

  -- Hints for functions lsp

  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require "lsp_signature".setup()
    end
  },

  -- Vue.js support plugins

  {
    "digitaltoad/vim-pug"
  },

  {
    "posva/vim-vue"
  },

  -- Git changes check

  {
    "airblade/vim-gitgutter"
  },

  -- Easy search and replace

  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },

  -- Rust crates completion

  {
    "mhinz/vim-crates"
  },

}
