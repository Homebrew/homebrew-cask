cask 'macvim' do
  version '7.4.96'
  sha256 'd9160cf89793c052af6cfd7dbc7ac168ad8e9d4c0adf054e9d5a400454924191'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: 'f37ea7e39f94394d5c4912faf474ecf57998ba2a1ac8f9b159850e3808e562d6'
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
