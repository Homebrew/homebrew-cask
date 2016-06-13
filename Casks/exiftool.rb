cask 'exiftool' do
  version '10.20'
  sha256 '8b45837e9f72a3da8726c130e7597377e5507f880fe4fa8eedac103e7ccf33c9'

  url "http://owl.phy.queensu.ca/~phil/exiftool/ExifTool-#{version}.dmg"
  appcast 'http://owl.phy.queensu.ca/~phil/exiftool/rss.xml',
          checkpoint: '01830791e3904c8bb1f955a14ae86c639fac5e2742dbb3ba875e6baa041feab4'
  name 'ExifTool by Phil Harvey'
  homepage 'http://www.sno.phy.queensu.ca/~phil/exiftool/'
  license :gpl

  pkg "ExifTool-#{version}.pkg"

  uninstall pkgutil: 'com.philharvey.image-exiftool'
end
