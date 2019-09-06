cask 'mapillary-uploader' do
  version '1.2.1'
  sha256 '2ceba51833f157f11461a2b2d121a0240adbf792a5d1c0f3b87ba0bc82c4516e'

  url "https://tools.mapillary.com/uploader/Mapillary%20Uploader-#{version}.dmg"
  appcast 'https://www.mapillary.com/desktop-uploader'
  name 'Mapillary Uploader for Desktop'
  homepage 'https://www.mapillary.com/desktop-uploader'

  app 'Mapillary Uploader.app'
end
