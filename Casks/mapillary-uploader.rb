cask 'mapillary-uploader' do
  version '1.2.3'
  sha256 '9509ff4bf4efbee115b477004b9755e70ebde40fa3e808c9ffa035016f275ea3'

  url "https://tools.mapillary.com/uploader/Mapillary%20Uploader-#{version}.dmg"
  appcast 'https://www.mapillary.com/desktop-uploader'
  name 'Mapillary Uploader for Desktop'
  homepage 'https://www.mapillary.com/desktop-uploader'

  app 'Mapillary Uploader.app'
end
