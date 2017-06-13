cask 'exifrenamer' do
  version '2.1.3'
  sha256 '638a95447a2d51312acffe48bb767694d935aa8f448963947ce48db0767bb10e'

  url 'http://www.qdev.de/downloads/files/ExifRenamer.dmg'
  appcast 'http://www.qdev.de/versions/ExifRenamer.txt',
          checkpoint: '06e19dead69dcc16bc573cc9f24b68b69907f4cfd4afb9d70372cc6b462a9862'
  name 'ExifRenamer'
  homepage 'https://www.qdev.de/?location=mac/exifrenamer&forcelang=en'

  app 'ExifRenamer.app'

  zap delete: '~/Library/Preferences/de.qdev.ExifRenamer.plist'
end
