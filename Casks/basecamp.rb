class Basecamp < Cask
  url 'http://download.garmin.com/software/BaseCampforMac_424.dmg'
  homepage 'http://www.garmin.com/en-US/shop/downloads/basecamp'
  version '4.2.4'
  sha256 '674e75cc54d4e87925f3b6d095bd09efd9551c2a622c790178cf70a28deb85d3'
  install 'Install BaseCamp.pkg'
  uninstall :pkgutil => 'com.garmin.BaseCamp'
end
