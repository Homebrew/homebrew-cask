cask 'exiftool' do
  version '10.13'
  sha256 '464c3a88882b3aced64bb457d9efa3469bf326817ae0330f1cc9f9b6714ed8cd'

  url "http://owl.phy.queensu.ca/~phil/exiftool/ExifTool-#{version}.dmg"
  appcast 'http://owl.phy.queensu.ca/~phil/exiftool/rss.xml',
          checkpoint: '9fc475063d255d4141bcaf3f46fe85bf0b3eee1aab4ebbddc174407c447fc324'
  name 'ExifTool by Phil Harvey'
  homepage 'http://www.sno.phy.queensu.ca/~phil/exiftool/'
  license :gpl

  pkg "ExifTool-#{version}.pkg"

  uninstall pkgutil: 'com.philharvey.image-exiftool'
end
