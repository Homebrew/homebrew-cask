cask 'jumpshare' do
  version '2.6.0'
  sha256 '832ca3b54e6c33d1d1986143bdb4c763257071544a089342095131e287833f5d'

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
