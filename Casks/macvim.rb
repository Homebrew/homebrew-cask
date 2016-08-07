cask 'macvim' do
  version '7.4.104'
  sha256 '85653caf0c39eceb326e5c8ef11a8df522a05c4f2bfb3263cdcbf1bc938148c4'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: '98effae6e9752c822d87a8cf1e744e88daee1bd13e9ac35d10e752009a8fbc9c'
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
