cask 'macvim' do
  version '7.4.97'
  sha256 'c2bd3fc44088ee8f2eecb3fe1aeecd29ee587249cbdd9277783661b71d833e05'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: 'bcc7df81b062d308bfa87c8b13b89c618ab02c9af288bbaa3382a2a6e71a1628'
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
