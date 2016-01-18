cask 'macvim' do
  version '7.4.91'
  sha256 '9c6fdfd345a2ed2aa1f9fe3d5522542e76ff2791a920a096427dc193c9739bb6'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim-#{version.major_minor}.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: 'e04eb7e9567ddd4b6cfacc438e121413ecd91729dcfae405374a124b9646d761'
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
