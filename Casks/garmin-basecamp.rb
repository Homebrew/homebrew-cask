cask :v1 => 'garmin-basecamp' do
  version '4.4.7'
  sha256 '9145350f7fd4206049aca7baeaf069118bd619f8135bf049b8a86d18e97f1986'

  url "http://download.garmin.com/software/BaseCampforMac_#{version.gsub('.', '')}.dmg"
  name 'Garmin BaseCamp'
  homepage 'http://www.garmin.com/en-US/shop/downloads/basecamp'
  license :gratis

  pkg 'Install BaseCamp.pkg'

  uninstall :pkgutil => 'com.garmin.BaseCamp'
end
