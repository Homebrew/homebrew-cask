cask 'macvim' do
  version '7.4-89'
  sha256 '779928de48eabc3f90a830e441affb0f28e370881737d2b3f4bf173c41a1798f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.sub(%r{^.*-}, '')}/MacVim-#{version.sub(%r{-.*$}, '')}.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          :sha256 => '4afea4c3067e73bca18868c602cdfd6f6ff20779d11d189945b25fef8c07ea06'
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
