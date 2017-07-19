cask 'google-earth-pro' do
  version '7.3.0.3830'
  sha256 'bc9fab7a6d83fa9f0bd218cb56162dd31337cb52c7874b3ace0330cd5d73f9bf'

  url 'https://dl.google.com/earth/client/advanced/current/GoogleEarthProMac-Intel.dmg'
  name 'Google Earth Pro'
  homepage 'https://www.google.com/earth/'

  pkg "Install Google Earth Pro #{version}.pkg"

  uninstall pkgutil: 'com.Google.GoogleEarthPro'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.googleearthpro.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.googleearthupdatehelper.sfl',
                '~/Library/Application Support/Google Earth',
                '~/Library/Caches/Google Earth',
                '~/Library/Caches/com.Google.GoogleEarthPro',
              ]
end
