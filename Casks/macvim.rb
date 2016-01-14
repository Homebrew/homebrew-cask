cask 'macvim' do
  version '7.4.90'
  sha256 'ea480f1f69e524bb9302bdebb66ca0e854e0ab6ec951f7f58e16be46d86bac00'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim-#{version.major_minor}.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          :checkpoint => '3787c00c6f7b99495db61bf2c4d2f6c87e9f239b2c4741066b61a953349b02f1'
  name 'MacVim'
  homepage 'https://github.com/macvim-dev/macvim'
  license :oss

  conflicts_with :formula => 'macvim'

  app 'MacVim.app'
  binary 'mvim'

  zap :delete => [
                   '~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist',
                   '~/Library/Preferences/org.vim.MacVim.plist',
                 ]
end
