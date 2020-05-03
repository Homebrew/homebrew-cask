cask 'rowmote-helper' do
  version '4.2'
  sha256 'a3dba1835b34abf08a33f4c02c875cf4ef181b534615a25021b024a4cdda568f'

  url "https://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  appcast 'https://www.regularrateandrhythm.com/apps/rowmote-pro/rowmote-appcast.xml'
  name 'Rowmote Helper'
  homepage 'https://regularrateandrhythm.com/apps/rowmote-pro/'

  auto_updates true

  app 'Rowmote Helper.app'
end
