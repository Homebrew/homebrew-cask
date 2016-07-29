cask 'synology-photo-station-uploader' do
  version '1.3-056'
  sha256 '515c01378d6cb660788c03a93be2bd509d977024184e9adbdb8414e6ad5c6bb9'

  url "https://global.download.synology.com/download/Tools/PhotoStationUploader/#{version}/Mac/PhotoStationUploader-#{version.sub(%r{.*-}, '')}-Mac-Installer.dmg"
  name 'Synology Photo Station Uploader'
  homepage 'https://www.synology.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "PhotoStationUploader-#{version.sub(%r{.*-}, '')}-Mac-Installer.pkg"

  uninstall pkgutil: 'com.synology.photostationuploader.installer'
end
