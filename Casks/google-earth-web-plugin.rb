cask 'google-earth-web-plugin' do
  version :latest
  sha256 :no_check

  url 'https://r1---sn-c0q7lns7.c.pack.google.com/edgedl/earth/plugin/current/googleearth-mac-plugin-intel.dmg?redirect_counter=1&cms_redirect=yes&shardbypass=yes',
      user_agent: :fake
  name 'Google Earth plug-in'
  homepage 'https://www.google.com/intl/en/earth/explore/products/plugin.html'

  pkg 'Install Google Earth.pkg'

  uninstall pkgutil:   [
                         'com.Google.GoogleEarthPlugin.plugin',
                         'com.google.pkg.Keystone',
                       ],
            launchctl: [
                         'com.google.keystone.agent',
                         'com.google.keystone.daemon',
                       ]
end
