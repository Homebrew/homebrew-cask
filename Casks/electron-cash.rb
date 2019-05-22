cask 'electron-cash' do
  version '4.0.3'
  sha256 '3c3e43a397c06c73fb00fcc924f3c64ed030e3a8342ef2fda013dbc4006212d5'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/fyookball/electrum/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
