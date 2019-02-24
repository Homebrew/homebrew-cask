cask 'electron-cash' do
  version '3.3.6'
  sha256 '7392e51ed9a35d036170aa780a5b1afabd7b8baac8c699fb487f8e4d785addc9'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/fyookball/electrum/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
