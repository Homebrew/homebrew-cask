cask 'synology-photo-station-uploader' do
  version '1.4-080'
  sha256 '8b1e9477329d6f611df85ffcef715e289001a186e0f95ff0062b85104beaa83b'

  url "https://global.download.synology.com/download/Tools/PhotoStationUploader/#{version}/Mac/PhotoStationUploader-#{version.sub(%r{.*-}, '')}-Mac-Installer.dmg"
  appcast 'https://www.synology.com/en-global/releaseNote/PhotoStationUploader',
          checkpoint: 'e438d9e1c4b182f1c59d661122c1a3bb2bf09eb1d72442acfb71be9aa3cb3cf4'
  name 'Synology Photo Station Uploader'
  homepage 'https://www.synology.com/'

  pkg "PhotoStationUploader-#{version.sub(%r{.*-}, '')}-Mac-Installer.pkg"

  uninstall pkgutil: 'com.synology.photostationuploader.installer'
end
