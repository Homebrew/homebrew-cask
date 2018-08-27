cask 'jumpshare' do
  version :latest
  sha256 :no_check

  url 'https://apps.jumpshare.com/desktop/mac/Jumpshare.dmg'
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
