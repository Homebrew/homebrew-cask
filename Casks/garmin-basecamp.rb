cask 'garmin-basecamp' do
  version '4.5.2'
  sha256 'ab9b554d967d20c1a3f5a925ae18422d728208735641e6de27efd0a1128a503d'

  url "http://download.garmin.com/software/BaseCampforMac_#{version.delete('.')}.dmg"
  name 'Garmin BaseCamp'
  homepage 'https://www.garmin.com/en-US/shop/downloads/basecamp'
  license :gratis

  depends_on :macos => '>= :yosemite'
  depends_on :arch => :intel

  pkg 'Install BaseCamp.pkg'

  uninstall :pkgutil => 'com.garmin.BaseCamp'
end
