cask 'exifrenamer' do
  version '2.3.1'
  sha256 'c3bec0c2743f7aede074802824ee04f1851d727bdf495bf19c08a25d3cfd8e66'

  url 'https://www.qdev.de/downloads/files/ExifRenamer.dmg'
  appcast 'https://www.qdev.de/versions/ExifRenamer.txt'
  name 'ExifRenamer'
  homepage 'https://www.qdev.de/?location=mac/exifrenamer&forcelang=en'

  app 'ExifRenamer.app'

  zap trash: '~/Library/Preferences/de.qdev.ExifRenamer.plist'
end
