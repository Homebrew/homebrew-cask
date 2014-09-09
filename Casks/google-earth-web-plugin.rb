class GoogleEarthWebPlugin < Cask
  version 'latest'
  sha256 :no_check

  url 'http://r2---sn-po4vapo3-j3ae.c.pack.google.com/edgedl/earth/plugin/current/googleearth-mac-plugin-intel.dmg'
  homepage 'http://www.google.com/intl/en/earth/explore/products/plugin.html'

  internet_plugin 'Google Earth Web Plug-in.plugin'
end
