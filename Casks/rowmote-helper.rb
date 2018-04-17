cask 'rowmote-helper' do
  version '4.1.9'
  sha256 '2929277d4d394a8a40f311d0974a7da559911c2a727e3655aa0c5fa1a9af5390'

  url "http://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  appcast 'http://www.regularrateandrhythm.com/apps/rowmote-pro/rowmote-appcast.xml',
          checkpoint: 'eb7ad8df3ad8e3ebb42484ea06499b6da1f2dfe46d817170836f048f5b5f3c7c'
  name 'Rowmote Helper'
  homepage 'http://regularrateandrhythm.com/apps/rowmote-pro/'

  auto_updates true

  app 'Rowmote Helper.app'
end
