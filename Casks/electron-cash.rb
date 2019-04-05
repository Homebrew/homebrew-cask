cask 'electron-cash' do
  version '4.0.0'
  sha256 '05bcf29862c7a0f13e931fac56244cb38fb2a75825cea6194f307cb8eab1e8e7'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/fyookball/electrum/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
