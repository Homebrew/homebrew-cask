cask 'google-earth-pro' do
  version '7.3.0.3832'
  sha256 'a55a7f97ea498cb0e5704681b0e4f33af73c97d5813a239bbece57f1f5bb23aa'

  url 'https://dl.google.com/earth/client/advanced/current/GoogleEarthProMac-Intel.dmg'
  name 'Google Earth Pro'
  homepage 'https://www.google.com/earth/'

  pkg "Install Google Earth Pro #{version}.pkg"

  uninstall pkgutil: 'com.Google.GoogleEarthPro'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.googleearthpro.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.googleearthupdatehelper.sfl*',
               '~/Library/Application Support/Google Earth',
               '~/Library/Caches/Google Earth',
               '~/Library/Caches/com.Google.GoogleEarthPro',
             ]
end
