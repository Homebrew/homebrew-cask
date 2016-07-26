cask 'exiftool' do
  version '10.23'
  sha256 'c1cd10ac43d698d9b83ed6b7e7d20ef262d2fccab92f82cd1c698be2753e3fbd'

  url "http://owl.phy.queensu.ca/~phil/exiftool/ExifTool-#{version}.dmg"
  appcast 'http://owl.phy.queensu.ca/~phil/exiftool/rss.xml',
          checkpoint: '1b99e82a1e2fa0191e2ad1f3ffb3bb13f5404c981f715780a45f33f0108abf6b'
  name 'ExifTool by Phil Harvey'
  homepage 'http://www.sno.phy.queensu.ca/~phil/exiftool/'
  license :gpl

  pkg "ExifTool-#{version}.pkg"

  uninstall pkgutil: 'com.philharvey.image-exiftool'
end
