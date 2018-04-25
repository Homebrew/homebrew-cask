cask 'exifrenamer' do
  version '2.2.0'
  sha256 '9ab4382186943cbeaceaa2a5f22c0f6b69f095468a4aeb15537e68239820c60f'

  url 'https://www.qdev.de/downloads/files/ExifRenamer.dmg'
  appcast 'https://www.qdev.de/versions/ExifRenamer.txt',
          checkpoint: 'edc8e395a5182e3b231816e191b303407d511f70c1d9cb6d532927cc559c507c'
  name 'ExifRenamer'
  homepage 'https://www.qdev.de/?location=mac/exifrenamer&forcelang=en'

  app 'ExifRenamer.app'

  zap trash: '~/Library/Preferences/de.qdev.ExifRenamer.plist'
end
