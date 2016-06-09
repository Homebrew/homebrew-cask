cask 'exiftool' do
  version '10.19'
  sha256 'e43e22e676ef58ba20a10eaca6fae83e2768848fa949d11fe0554de0a2b8f220'

  url "http://owl.phy.queensu.ca/~phil/exiftool/ExifTool-#{version}.dmg"
  appcast 'http://owl.phy.queensu.ca/~phil/exiftool/rss.xml',
          checkpoint: 'b447d3e609e77648a346d554fe2ee3e1c0963a79c393622cda34915dea422039'
  name 'ExifTool by Phil Harvey'
  homepage 'http://www.sno.phy.queensu.ca/~phil/exiftool/'
  license :gpl

  pkg "ExifTool-#{version}.pkg"

  uninstall pkgutil: 'com.philharvey.image-exiftool'
end
