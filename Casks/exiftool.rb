cask 'exiftool' do
  version '10.11'
  sha256 'd8b8304baf639048ee21f31d9c4f9d4b48c04f316a5f97e993cddc7c3b46d481'

  url "http://owl.phy.queensu.ca/~phil/exiftool/ExifTool-#{version}.dmg"
  appcast 'http://owl.phy.queensu.ca/~phil/exiftool/rss.xml',
          checkpoint: 'e8b4a0432fe408494584ca06da6f551d82418f9d45adb12be0eda397cb7d0db7'
  name 'ExifTool by Phil Harvey'
  homepage 'http://www.sno.phy.queensu.ca/~phil/exiftool/'
  license :gpl

  pkg "ExifTool-#{version}.pkg"

  uninstall pkgutil: 'com.philharvey.image-exiftool'
end
