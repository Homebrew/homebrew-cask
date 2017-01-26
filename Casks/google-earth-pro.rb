cask 'google-earth-pro' do
  version '7.1.8.3036'
  sha256 '6eff03463b4ae435d7e27a5501352e85ed7b92eadafbe341c3b88784f6d4fd4e'

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
