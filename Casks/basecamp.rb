class Basecamp < Cask
  url 'http://download.garmin.com/software/BaseCampforMac_424.dmg'
  homepage 'http://www.garmin.com/en-US/shop/downloads/basecamp'
  version '4.2.4'
  sha1 'a12e687fea5618ebed3084bc547869753341fa1f'
  install 'Install BaseCamp.pkg'
  uninstall :pkgutil => 'com.garmin.BaseCamp'
end
