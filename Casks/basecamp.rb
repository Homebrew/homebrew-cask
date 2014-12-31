cask :v1 => 'basecamp' do
  version '4.4.6'
  sha256 'd114af2d4f68132cee1739eae67a5704bf09612bae032a97535b2befcc44ab40'

  url "http://download.garmin.com/software/BaseCampforMac_#{version.gsub('.', '')}.dmg"
  homepage 'http://www.garmin.com/en-US/shop/downloads/basecamp'
  license :gratis

  pkg 'Install BaseCamp.pkg'

  uninstall :pkgutil => 'com.garmin.BaseCamp'
end
