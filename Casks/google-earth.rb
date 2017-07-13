cask 'google-earth' do
  version '7.3.0.3827'
  sha256 '85e49d4a377b148a4529f53624114647d6da9714074cc8b2c147ed152f2d25a0'

  url 'https://dl.google.com/earth/client/advanced/current/GoogleEarthMac-Intel.dmg'
  name 'Google Earth'
  homepage 'https://www.google.com/earth/'

  pkg "Install Google Earth Free #{version}.pkg"

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
