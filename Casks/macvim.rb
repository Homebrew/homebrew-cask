cask :v1 => 'macvim' do
  version '7.4-84'
  sha256 '513dd15596153897d3a19e8827c0e64abfad2c6120884e41b4f2a80240fc6dd5'

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
