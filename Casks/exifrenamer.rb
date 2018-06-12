cask 'exifrenamer' do
  version '2.2.3'
  sha256 'de1e0b0f068c540bace010b33023aabccf4191f62e203337a06c962da8f9f763'

  url 'https://www.qdev.de/downloads/files/ExifRenamer.dmg'
  appcast 'https://www.qdev.de/versions/ExifRenamer.txt'
  name 'ExifRenamer'
  homepage 'https://www.qdev.de/?location=mac/exifrenamer&forcelang=en'

  app 'ExifRenamer.app'

  zap trash: '~/Library/Preferences/de.qdev.ExifRenamer.plist'
end
