cask 'jumpshare' do
  version '2.5.7'
  sha256 '6603d431205592a58344e27af1fc93fc5297357763eae0337c0a53651bd2e921'

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
