cask :v1 => 'garmin-basecamp' do
  version '4.4.8'
  sha256 '1ae1033fb4c80189ecc3c50b2f9ee90cbee6662f068cfa08800d886e1cf5ec42'

  url "http://download.garmin.com/software/BaseCampforMac_#{version.gsub('.', '')}.dmg"
  name 'Garmin BaseCamp'
  homepage 'http://www.garmin.com/en-US/shop/downloads/basecamp'
  license :gratis

  pkg 'Install BaseCamp.pkg'

  uninstall :pkgutil => 'com.garmin.BaseCamp'
end
