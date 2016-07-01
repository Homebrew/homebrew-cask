cask 'exiftool' do
  version '10.21'
  sha256 '1654ff959c08808d78d38d5141384448c3cf50ec38264fe612346217ef7634ef'

  url "http://owl.phy.queensu.ca/~phil/exiftool/ExifTool-#{version}.dmg"
  appcast 'http://owl.phy.queensu.ca/~phil/exiftool/rss.xml',
          checkpoint: 'a1932a6a2af798d525538600a8c86a64228742b68e3387ca8179d45fbc4202c0'
  name 'ExifTool by Phil Harvey'
  homepage 'http://www.sno.phy.queensu.ca/~phil/exiftool/'
  license :gpl

  pkg "ExifTool-#{version}.pkg"

  uninstall pkgutil: 'com.philharvey.image-exiftool'
end
