cask 'macvim' do
  version '7.4.93'
  sha256 '8a77c11223916aef5ba5442a889fef778b2213151679137a79ee530e6b887957'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: 'fe4c8ee66ded1b610383aebd927f2e4539c55399659ff8aa92e9b36c5f01b9f5'
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
