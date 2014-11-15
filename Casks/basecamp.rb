cask :v1 => 'basecamp' do
  version '4.3.4'
  sha256 'bccb1e3277ccf784a55ae56e2d21c46f6a15997a25820dfe7c79a5cab6d89f75'

  url "http://download.garmin.com/software/BaseCampforMac_#{version.gsub('.', '')}.dmg"
  homepage 'http://www.garmin.com/en-US/shop/downloads/basecamp'
  license :gratis

  pkg 'Install BaseCamp.pkg'
  uninstall :pkgutil => 'com.garmin.BaseCamp'
end
