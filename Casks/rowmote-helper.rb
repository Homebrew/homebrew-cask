cask 'rowmote-helper' do
  version '4.1.9'
  sha256 '2929277d4d394a8a40f311d0974a7da559911c2a727e3655aa0c5fa1a9af5390'

  url "https://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  appcast 'https://www.regularrateandrhythm.com/apps/rowmote-pro/rowmote-appcast.xml'
  name 'Rowmote Helper'
  homepage 'https://regularrateandrhythm.com/apps/rowmote-pro/'

  auto_updates true

  app 'Rowmote Helper.app'
end
