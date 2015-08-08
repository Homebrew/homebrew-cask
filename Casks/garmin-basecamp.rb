cask :v1 => 'garmin-basecamp' do
  version '4.5.0'
  sha256 '78e07cb729a6bfac2e2e86db54853f1574130c5bbf207a5ff476368f1f997eaf'

  url "http://download.garmin.com/software/BaseCampforMac_#{version.gsub('.', '')}.dmg"
  name 'Garmin BaseCamp'
  homepage 'https://www.garmin.com/en-US/shop/downloads/basecamp'
  license :gratis

  depends_on :macos => '>= :yosemite'
  depends_on :arch => :intel

  pkg 'Install BaseCamp.pkg'

  uninstall :pkgutil => 'com.garmin.BaseCamp'
end
