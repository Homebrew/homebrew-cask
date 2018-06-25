cask 'google-earth-pro' do
  version '7.3.2.5481'
  sha256 '79f6946a56a5c71325006d5bb43f8e4385fb1d1384f98ca2843b5485c635bfac'

  url 'https://dl.google.com/earth/client/advanced/current/GoogleEarthProMac-Intel.dmg'
  name 'Google Earth Pro'
  homepage 'https://www.google.com/earth/'

  pkg "Install Google Earth Pro #{version}.pkg"

  uninstall pkgutil: 'com.Google.GoogleEarthPro'

  zap trash:   [
                 '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.googleearthpro.sfl*',
                 '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.googleearthupdatehelper.sfl*',
                 '~/Library/Application Support/Google Earth',
                 '~/Library/Caches/Google Earth',
                 '~/Library/Caches/com.Google.GoogleEarthPro',
               ],
      pkgutil: 'com.google.pkg.Keystone'
end
