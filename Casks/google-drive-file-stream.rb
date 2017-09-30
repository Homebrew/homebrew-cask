cask 'google-drive-file-stream' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/drive-file-stream/GoogleDriveFileStream.dmg'
  name 'Google Drive File Stream'
  homepage 'https://www.google.com/drive/'

  pkg 'GoogleDriveFileStream.pkg'

  uninstall pkgutil: 'com.google.drivefs'
end
