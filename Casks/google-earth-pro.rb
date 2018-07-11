cask 'google-earth-pro' do
  version '7.3.2.5487'
  sha256 'da819d7cd38370479ef8b9bec0c6cb8346beeeff5d86c7b7d587a05d74a80026'

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
