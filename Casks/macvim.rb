cask 'macvim' do
  version '7.4.95'
  sha256 '224f1381ee7763e946db6b009a2f5e722272f8e5227731ebf0b4f3b13373787b'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: '56c8cb7d9735e720b49aa9c2a25cc0fe5346d7026382d4d72310cb02284c6392'
  name 'MacVim'
  homepage 'https://github.com/macvim-dev/macvim'
  license :oss

  conflicts_with formula: 'macvim'

  app 'MacVim.app'
  binary 'mvim'

  zap delete: [
                '~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist',
                '~/Library/Preferences/org.vim.MacVim.plist',
              ]
end
