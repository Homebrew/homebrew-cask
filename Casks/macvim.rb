cask 'macvim' do
  version '7.4.98'
  sha256 '2710168b505539b6f80e92dc7f59435e525af9c76432ce228ee1ff2c01dd9cac'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: 'e609e07598ff1e98f186f3114af4e381acd03d8409c46d0fff1200dc6aa9148d'
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
