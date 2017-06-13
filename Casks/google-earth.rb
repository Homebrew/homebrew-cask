cask 'google-earth' do
  version '7.1.8.3036'
  sha256 'a6cdb98e2caf0162c425b1acc0dab6196a220bf59eef378624b8b7c60a22bf18'

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
