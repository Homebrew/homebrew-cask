cask 'exiftool' do
  version '10.24'
  sha256 '71dcec3e8a033259664bba08360d98f07f71e4fd05203adbb3bac14d3c93ee46'

  url "http://owl.phy.queensu.ca/~phil/exiftool/ExifTool-#{version}.dmg"
  appcast 'http://owl.phy.queensu.ca/~phil/exiftool/rss.xml',
          checkpoint: '5e54fe41a618ba1abf91477cd76d08fe2f1b77d6a2ef26e68d3734628ce3e00b'
  name 'ExifTool by Phil Harvey'
  homepage 'http://www.sno.phy.queensu.ca/~phil/exiftool/'
  license :gpl

  pkg "ExifTool-#{version}.pkg"

  uninstall pkgutil: 'com.philharvey.image-exiftool'
end
