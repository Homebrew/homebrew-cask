cask 'google-earth-pro' do
  version '7.3.0.3827'
  sha256 '85e49d4a377b148a4529f53624114647d6da9714074cc8b2c147ed152f2d25a0'

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

  caveats <<-EOS.undent
    Using #{token} requires a license key. If you do not have a key, use your
    email address and the key GEPFREE to sign in.
  EOS
end
