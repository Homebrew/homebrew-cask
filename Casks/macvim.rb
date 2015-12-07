cask :v1 => 'macvim' do
  version '7.4-85'
  sha256 'b83c8f584a2a7928edb7e9c5ce931ed66f9265c18f014ca4e377e0fa8062edc3'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.sub(%r{^.*-},'')}/MacVim-#{version.sub(%r{-.*$},'')}.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom'
  name 'MacVim'
  homepage 'https://github.com/macvim-dev/macvim'
  license :oss

  app 'MacVim.app'
  binary 'mvim'

  zap :delete => [
                  '~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist',
                  '~/Library/Preferences/org.vim.MacVim.plist',
                 ]

  conflicts_with :formula => 'macvim'
end
