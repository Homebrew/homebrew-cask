cask 'jumpshare' do
  version :latest
  sha256 :no_check

  url 'https://apps.jumpshare.com/desktop/mac/Jumpshare.dmg'
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
