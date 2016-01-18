cask 'rowmote-helper' do
  version '4.1.5'
  sha256 'a9fb0fbc0adf90ff45a095f3d097910cc4d990105a960a6d1c567fde519b14e9'

  url "http://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  appcast 'http://www.regularrateandrhythm.com/apps/rowmote-pro/rowmote-appcast.xml',
          checkpoint: '329a44fb6a09bb2ef82d924fe586feaad2ed39b25af9c89f7945a97576d90a45'
  name 'Rowmote Helper'
  homepage 'http://regularrateandrhythm.com/apps/rowmote-pro/'
  license :commercial

  auto_updates true

  app 'Rowmote Helper.app'
end
