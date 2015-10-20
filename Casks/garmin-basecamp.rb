cask :v1 => 'garmin-basecamp' do
  version '4.5.1'
  sha256 '3e820d02f1cb245fd294233b970c5af01c833f5c4cb972b5c4824dfec4652ea6'

  url "http://download.garmin.com/software/BaseCampforMac_#{version.delete('.')}.dmg"
  name 'Garmin BaseCamp'
  homepage 'https://www.garmin.com/en-US/shop/downloads/basecamp'
  license :gratis

  depends_on :macos => '>= :yosemite'
  depends_on :arch => :intel

  pkg 'Install BaseCamp.pkg'

  uninstall :pkgutil => 'com.garmin.BaseCamp'
end
