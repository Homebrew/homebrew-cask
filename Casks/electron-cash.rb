cask 'electron-cash' do
  version '3.3.5'
  sha256 'ff7de0c655eff63c6adca7663e951e45844d24f021905860510325b23e1bf4c6'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/fyookball/electrum/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
