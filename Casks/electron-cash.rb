cask 'electron-cash' do
  version '4.0.5'
  sha256 'e27070c1920e07ec99f5c8aeb0ef74c0480db062304cc4ffa6716b2dc13bd9ee'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/Electron-Cash/Electron-Cash/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
