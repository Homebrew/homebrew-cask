cask :v1 => 'synology-photo-station-uploader' do
  version '046'
  sha256 'd8f3462c2590c9a302ec3ea091c779682f37bbacdae7c8038dcccddc9f920bc6'

  url "https://global.download.synology.com/download/Tools/PhotoStationUploader/#{version}/Mac/PhotoStationUploader-#{version}-Mac-Installer.dmg"
  name 'Synology Photo Station Uploader'
  homepage 'https://www.synology.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "PhotoStationUploader-#{version}-Mac-Installer.pkg"

  uninstall :pkgutil => 'com.synology.photostationuploader.installer'
end
