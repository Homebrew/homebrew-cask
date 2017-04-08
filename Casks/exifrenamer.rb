cask 'exifrenamer' do
  version '2.1.3'
  sha256 '638a95447a2d51312acffe48bb767694d935aa8f448963947ce48db0767bb10e'

  url 'http://www.qdev.de/downloads/files/ExifRenamer.dmg'
  appcast 'http://www.qdev.de/versions/ExifRenamer.txt',
          checkpoint: 'eb01a4e8e8922406f15a22cadc3fae28d4f513afe11b4734788eb2ea73cf034e'
  name 'ExifRenamer'
  homepage 'https://www.qdev.de/?location=mac/exifrenamer&forcelang=en'

  app 'ExifRenamer.app'

  zap delete: '~/Library/Preferences/de.qdev.ExifRenamer.plist'
end
