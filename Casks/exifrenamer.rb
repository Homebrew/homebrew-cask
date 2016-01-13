cask 'exifrenamer' do
  version :latest
  sha256 :no_check

  url 'http://www.qdev.de/downloads/files/ExifRenamer.dmg'
  appcast 'http://www.qdev.de/versions/ExifRenamer.txt',
          :sha256 => 'eb01a4e8e8922406f15a22cadc3fae28d4f513afe11b4734788eb2ea73cf034e'
  name 'ExifRenamer'
  homepage 'http://www.qdev.de/?location=mac/exifrenamer&forcelang=en'
  license :gratis

  app 'ExifRenamer.app'

  zap :delete => '~/Library/Preferences/de.qdev.ExifRenamer.plist'
end
