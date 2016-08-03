cask 'exiftool' do
  version '10.25'
  sha256 '98a56de36cf4c61e3c909208614fe8271b927213da47172cbaf59db4c8f032ac'

  url "http://owl.phy.queensu.ca/~phil/exiftool/ExifTool-#{version}.dmg"
  appcast 'http://owl.phy.queensu.ca/~phil/exiftool/rss.xml',
          checkpoint: 'f77777af724e6d0126a6f7953cb07364afceac119f728818c8ed07d5ed6afde0'
  name 'ExifTool by Phil Harvey'
  homepage 'http://www.sno.phy.queensu.ca/~phil/exiftool/'
  license :gpl

  pkg "ExifTool-#{version}.pkg"

  uninstall pkgutil: 'com.philharvey.image-exiftool'
end
