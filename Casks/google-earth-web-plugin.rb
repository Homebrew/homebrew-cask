cask :v1 => 'google-earth-web-plugin' do
  version :latest
  sha256 :no_check

  url 'http://r2---sn-po4vapo3-j3ae.c.pack.google.com/edgedl/earth/plugin/current/googleearth-mac-plugin-intel.dmg'
  name 'Google Earth plug-in'
  homepage 'http://www.google.com/intl/en/earth/explore/products/plugin.html'
  license :gratis
  tags :vendor => 'Google'

  pkg 'Install Google Earth.pkg'
  uninstall :pkgutil => 'com.Google.GoogleEarthPlugin.plugin'
end
