cask 'exifrenamer' do
  version '2.2.1'
  sha256 '559da5db5a118cfe0fc183e9aeb820badaba1f1b06b0b4e5db81eda92116cb52'

  url 'https://www.qdev.de/downloads/files/ExifRenamer.dmg'
  appcast 'https://www.qdev.de/versions/ExifRenamer.txt',
          checkpoint: 'd01c4e9bf10ed63e0de02bdaa54ae5a279486e9125f5febcc5d8bb3fab332568'
  name 'ExifRenamer'
  homepage 'https://www.qdev.de/?location=mac/exifrenamer&forcelang=en'

  app 'ExifRenamer.app'

  zap trash: '~/Library/Preferences/de.qdev.ExifRenamer.plist'
end
