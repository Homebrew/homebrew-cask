cask 'macvim' do
  version '7.4.99'
  sha256 '76bc2afe23d87cd10f2da92bc59c464e4c1df2383b1d213c32090043c1bf2bd5'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: 'd9a032247b09d5da6adfa4ced52acbc1ca045684c2c7ffd6b2307df08def3fd7'
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
