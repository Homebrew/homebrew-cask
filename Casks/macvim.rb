cask 'macvim' do
  version '7.4.90'
  sha256 'ea480f1f69e524bb9302bdebb66ca0e854e0ab6ec951f7f58e16be46d86bac00'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim-#{version.major_minor}.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          :checkpoint => 'f3d72f38f82dc43ee72a8ad9a6c72b5ba67a7a98425a59869cb50a67ee62e306'
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
