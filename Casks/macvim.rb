cask 'macvim' do
  version '7.4.94'
  sha256 '470ae7c755504d9f32927b5dd4228f11759438a5799db4c6d2eafc1a713c7315'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: 'e6218c3143af859d554ebebfcbee8423a9c3a52b96e95cde0bf94844d95e0fee'
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
