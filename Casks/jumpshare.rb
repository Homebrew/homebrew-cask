cask 'jumpshare' do
  version '2.4.4'
  sha256 '39ed08287ec4a7d0999aa0f096e8fc6687189365e3fa4d99a80ca3538d289174'

  # d21hi1or3tbtjm.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d21hi1or3tbtjm.cloudfront.net/desktop/mac/Jumpshare.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/2e15b9ed1bad4078ac88b8fae1771bfb'
  name 'Jumpshare'
  homepage 'https://jumpshare.com/'

  app 'Jumpshare.app'

  zap trash: [
               '~/Library/Application Scripts/com.jumpshare.JumpshareLoginHelper',
               '~/Library/Application Support/com.jumpshare.Jumpshare',
               '~/Library/Containers/com.jumpshare.JumpshareLoginHelper',
               '~/Library/Cookies/com.jumpshare.Jumpshare.binarycookies',
               '~/Library/Preferences/com.jumpshare.Jumpshare.plist',
             ]
end
