cask 'macvim' do
  version '7.4.101'
  sha256 'daecfbc7f060ae4916d2da78e4592f3468a98f3598e34314bffa9daab1c63848'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: '31489a1a1cc86637be6ffa7efe535e9679383a49eeacb54dc38870941f8bcd56'
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
