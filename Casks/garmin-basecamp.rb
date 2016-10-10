cask 'garmin-basecamp' do
  version '4.6.3'
  sha256 '4624852d49c9388a6e13415f1b74178742e0f13d156041bf33d4156e97badf65'

  url "http://download.garmin.com/software/BaseCampforMac_#{version.no_dots}.dmg"
  name 'Garmin BaseCamp'
  homepage 'https://www.garmin.com/en-US/shop/downloads/basecamp'

  depends_on macos: '>= :yosemite'
  depends_on arch: :intel

  pkg 'Install BaseCamp.pkg'

  uninstall pkgutil: 'com.garmin.BaseCamp'
end
