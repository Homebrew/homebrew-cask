cask 'google-earth' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/earth/client/advanced/current/GoogleEarthMac-Intel.dmg'
  name 'Google Earth'
  homepage 'https://www.google.com/earth/'
  license :gratis

  pkg 'Install Google Earth.pkg'

  uninstall pkgutil: [
                       'com.Google.GoogleEarthPlus',
                       'com.Google.GoogleEarthPlugin.plugin',
                     ]

  zap delete: [
                '~/Library/Application Support/Google Earth',
                '~/Library/Caches/com.Google.GoogleEarthPlus',
                '~/Library/Caches/Google Earth',
                '~/Library/Preferences/com.Google.GoogleEarthPlus.plist',
              ],
      rmdir:  '~/Library/Caches/Google Earth'
end
