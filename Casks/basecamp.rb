cask :v1 => 'basecamp' do
  version '4.4.3'
  sha256 '129e345e2f730418f061b159614dd5f6dc1ce9aa49e5c41a0875b2f00657cddd'

  url "http://download.garmin.com/software/BaseCampforMac_#{version.gsub('.', '')}.dmg"
  homepage 'http://www.garmin.com/en-US/shop/downloads/basecamp'
  license :gratis

  pkg 'Install BaseCamp.pkg'
  uninstall :pkgutil => 'com.garmin.BaseCamp'
end
