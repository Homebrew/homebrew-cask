class SynologyPhotoStationUploader < Cask
  version '046'
  sha256 'd8f3462c2590c9a302ec3ea091c779682f37bbacdae7c8038dcccddc9f920bc6'

  url 'https://global.download.synology.com/download/Tools/PhotoStationUploader/046/Mac/PhotoStationUploader-046-Mac-Installer.dmg'
  homepage 'http://www.synology.com/'

  pkg 'PhotoStationUploader-046-Mac-Installer.pkg'
  uninstall :pkgutil => 'com.synology.photostationuploader.installer'
end
