cask 'mapillary-uploader' do
  version '1.2.0'
  sha256 '47f33a7b6acde506edcd7a64252dd18db54949b3da157183c00203263f810819'

  url "https://tools.mapillary.com/uploader/Mapillary%20Uploader-#{version}.dmg"
  appcast 'https://www.mapillary.com/desktop-uploader'
  name 'Mapillary Uploader for Desktop'
  homepage 'https://www.mapillary.com/desktop-uploader'

  app 'Mapillary Uploader.app'
end
