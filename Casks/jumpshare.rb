cask 'jumpshare' do
  version '2.6.1'
  sha256 'b11d1f979c1262d2e059e76d74775af9ea65d5a0bc45caabbea45781437b5837'

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
