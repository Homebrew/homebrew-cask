cask 'exiftool' do
  version '10.08'
  sha256 '7dcc2d19e8c2bba0d1e565f0f7a58a6196fc3ae68f438f604ab6c672b79660d7'

  url "http://www.sno.phy.queensu.ca/~phil/exiftool/ExifTool-#{version}.dmg"
  appcast 'http://owl.phy.queensu.ca/~phil/exiftool/rss.xml',
          :sha256 => 'f3a6a2060af3e886c5453f9152edf4e9dc6a150f288a2ceb14a29fc8b4545769'
  name 'ExifTool by Phil Harvey'
  homepage 'http://www.sno.phy.queensu.ca/~phil/exiftool/'
  license :gpl

  pkg "ExifTool-#{vesion}.pkg"

  uninstall :pkgutil   => 'com.philharvey.image-exiftool'
end
