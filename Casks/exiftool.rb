cask 'exiftool' do
  version '10.12'
  sha256 '2dd455e4736881da0d66650ddbdb4d0d465dad848998f1b4186b221b4a1e60d0'

  url "http://owl.phy.queensu.ca/~phil/exiftool/ExifTool-#{version}.dmg"
  appcast 'http://owl.phy.queensu.ca/~phil/exiftool/rss.xml',
          checkpoint: 'c5f9133f29efc2927874627b116d820244bc45b88b1d8ab18896dda291e1c69d'
  name 'ExifTool by Phil Harvey'
  homepage 'http://www.sno.phy.queensu.ca/~phil/exiftool/'
  license :gpl

  pkg "ExifTool-#{version}.pkg"

  uninstall pkgutil: 'com.philharvey.image-exiftool'
end
