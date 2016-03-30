cask 'macvim' do
  version '7.4.100'
  sha256 '584ee0a27a77301965c2a626d65cdbb4cb9af5a90c62ae9727bce618dcfd15b6'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: 'fd91bc5a4fa33ec5c6f2240b19eb763d315fa5f56a0ad7d8da565479dce27ace'
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
