cask 'exifrenamer' do
  version '2.3.2'
  sha256 '4dc20743a923394226daacdf86f11c273793f5b9dfb9b22289175c155b5782d8'

  url 'https://www.qdev.de/downloads/files/ExifRenamer.dmg'
  appcast 'https://www.qdev.de/versions/ExifRenamer.txt'
  name 'ExifRenamer'
  homepage 'https://www.qdev.de/?location=mac/exifrenamer&forcelang=en'

  app 'ExifRenamer.app'

  zap trash: '~/Library/Preferences/de.qdev.ExifRenamer.plist'
end
