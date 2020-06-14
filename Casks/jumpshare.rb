cask 'jumpshare' do
  version '2.6.2'
  sha256 '3ce2bc3d45a1789b125c6a4f3fb8607ef390326077d8cfb88b8c8c98c371ccbf'

  url "https://apps.jumpshare.com/desktop/mac/updates/Jumpshare-#{version}.tar.bz2"
  appcast 'https://apps.jumpshare.com/desktop/mac/updates/appcast.xml'
  name 'Jumpshare'
  homepage 'https://jumpshare.com/'

  depends_on macos: '>= :high_sierra'

  app 'Jumpshare.app'

  zap trash: [
               '~/Library/Application Scripts/com.jumpshare.JumpshareLoginHelper',
               '~/Library/Application Support/com.jumpshare.Jumpshare',
               '~/Library/Containers/com.jumpshare.JumpshareLoginHelper',
               '~/Library/Cookies/com.jumpshare.Jumpshare.binarycookies',
               '~/Library/Preferences/com.jumpshare.Jumpshare.plist',
             ]
end
