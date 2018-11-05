cask 'google-earth-pro' do
  version '7.3.2.5495'
  sha256 '89fce86496593405f2d1c4817246a59a45695a19dca878c91b6d259e84f4e49e'

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
