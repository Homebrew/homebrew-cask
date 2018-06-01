cask 'exifrenamer' do
  version '2.2.2'
  sha256 '7df7055250984820e5f91f0ec3718658f4570258af72766a2c487457a6a7f04f'

  url 'https://www.qdev.de/downloads/files/ExifRenamer.dmg'
  appcast 'https://www.qdev.de/versions/ExifRenamer.txt',
          checkpoint: '36f4d4845f52a9b18d480b77b7e473ce0af9a412a1be5fd8c2e7a1ec5d125307'
  name 'ExifRenamer'
  homepage 'https://www.qdev.de/?location=mac/exifrenamer&forcelang=en'

  app 'ExifRenamer.app'

  zap trash: '~/Library/Preferences/de.qdev.ExifRenamer.plist'
end
