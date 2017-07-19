cask 'google-earth' do
  version '7.3.0.3830'
  sha256 'bc9fab7a6d83fa9f0bd218cb56162dd31337cb52c7874b3ace0330cd5d73f9bf'

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
