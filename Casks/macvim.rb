cask 'macvim' do
  version '7.4.89'
  sha256 '779928de48eabc3f90a830e441affb0f28e370881737d2b3f4bf173c41a1798f'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim-#{version.major_minor}.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          :sha256 => 'f3d72f38f82dc43ee72a8ad9a6c72b5ba67a7a98425a59869cb50a67ee62e306'
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
