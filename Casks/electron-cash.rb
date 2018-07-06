cask 'electron-cash' do
  version '3.3'
  sha256 '561a64d72530c8a48b168cd66604db280a3cccb96623da70d7d7759b840a3cfc'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/fyookball/electrum/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
