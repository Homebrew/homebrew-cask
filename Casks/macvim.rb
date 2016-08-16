cask 'macvim' do
  version '7.4.106'
  sha256 '9ea2f0829e020e735fdeea13430112482c46260b12f38177846d68af9cc0b3b5'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: '1ce13aaacb180fccd420bd7b9aca4b7e8d550c5a4eb4d36e153476dbd1e92db1'
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
