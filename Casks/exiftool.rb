cask 'exiftool' do
  version '10.22'
  sha256 '501f172319df35b424aab5746ff2e48e85ad6485686cccd012c651080977bc39'

  url "http://owl.phy.queensu.ca/~phil/exiftool/ExifTool-#{version}.dmg"
  appcast 'http://owl.phy.queensu.ca/~phil/exiftool/rss.xml',
          checkpoint: '5da3fec21f38f7321fd343769e329aba52b94493be1af6c84c4588141e52cdce'
  name 'ExifTool by Phil Harvey'
  homepage 'http://www.sno.phy.queensu.ca/~phil/exiftool/'
  license :gpl

  pkg "ExifTool-#{version}.pkg"

  uninstall pkgutil: 'com.philharvey.image-exiftool'
end
