cask :v1 => 'exifrenamer' do
  version :latest
  sha256 :no_check

  url 'http://www.qdev.de/downloads/files/ExifRenamer.dmg'
  name 'ExifRenamer'
  homepage 'http://www.qdev.de/?location=mac/exifrenamer&forcelang=en'
  license :gratis

  appcast 'http://www.qdev.de/versions/ExifRenamer.txt',
          :sha256 => '06e19dead69dcc16bc573cc9f24b68b69907f4cfd4afb9d70372cc6b462a9862',
          :format => :plaintext

  app 'ExifRenamer.app'

  zap :delete => '~/Library/Preferences/de.qdev.ExifRenamer.plist'
end
