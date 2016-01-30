cask 'exiftool' do
  version '10.10'
  sha256 'bdb0b904878f53ebf546775d48720d69cc60268f89d930dde731a2aa28dcb017'

  url "http://owl.phy.queensu.ca/~phil/exiftool/ExifTool-#{version}.dmg"
  appcast 'http://owl.phy.queensu.ca/~phil/exiftool/rss.xml',
          checkpoint: '35828c145c2c833978040fc2d90968398084fa747037b4d03377955753e47505'
  name 'ExifTool by Phil Harvey'
  homepage 'http://www.sno.phy.queensu.ca/~phil/exiftool/'
  license :gpl

  pkg "ExifTool-#{version}.pkg"

  uninstall pkgutil: 'com.philharvey.image-exiftool'
end
