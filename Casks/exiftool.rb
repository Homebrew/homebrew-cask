cask 'exiftool' do
  version '10.09'
  sha256 '62c90ce3c88edc29fbf7546fc3083e8ea9ab0192bf1091e4ebb9e62a3acb6ad6'

  url "http://owl.phy.queensu.ca/~phil/exiftool/ExifTool-#{version}.dmg"
  appcast 'http://owl.phy.queensu.ca/~phil/exiftool/rss.xml',
          :sha256 => '582a5c0292ec962adb5e6adb13b52075616575d96ca806417f9dced896cb888c'
  name 'ExifTool by Phil Harvey'
  homepage 'http://www.sno.phy.queensu.ca/~phil/exiftool/'
  license :gpl

  pkg "ExifTool-#{version}.pkg"

  uninstall :pkgutil   => 'com.philharvey.image-exiftool'
end
