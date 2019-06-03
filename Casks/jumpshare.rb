cask 'jumpshare' do
  version '2.5.0'
  sha256 'c321f977cd1fd1802b7b4247dbf5d4108432320098b8f40491db837893feda36'

  url 'https://apps.jumpshare.com/desktop/mac/updates/Jumpshare-2.5.0.tar.bz2'
  appcast 'https://apps.jumpshare.com/desktop/mac/updates/appcast.xml'
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
