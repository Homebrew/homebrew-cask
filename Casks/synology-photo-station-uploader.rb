class SynologyPhotoStationUploader < Cask
  url 'http://global.download.synology.com/download/Tools/PhotoStationUploader/045/Mac/PhotoStationUploader-045-Mac-Installer.dmg'
  homepage 'http://www.synology.com/'
  version '045'
  sha256 'e62e480e99cfd2cf75ed5041ad778b83198714541b73467de9e0cf9f8366401c'
  install 'PhotoStationUploader-045-Mac-Installer.pkg'
  uninstall :pkgutil => 'com.synology.photostationuploader.installer'
end
