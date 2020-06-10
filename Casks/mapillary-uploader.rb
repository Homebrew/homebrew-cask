cask 'mapillary-uploader' do
  version '1.2.4'
  sha256 '2a2ba5331dd44206775060ce691208ebcae9389855b7b877d53fb5fc9bf9175c'

  url "https://tools.mapillary.com/uploader/Mapillary%20Uploader-#{version}.dmg"
  appcast 'https://www.mapillary.com/desktop-uploader'
  name 'Mapillary Uploader for Desktop'
  homepage 'https://www.mapillary.com/desktop-uploader'

  app 'Mapillary Uploader.app'
end
