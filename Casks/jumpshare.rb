cask 'jumpshare' do
  version '2.4.4'
  sha256 '79d062a1b4d9ae069f7990b73ec7b153d8c4a7700620f60dda1311e05b3d3a56'

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
