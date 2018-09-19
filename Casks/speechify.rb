cask 'speechify' do
  version '2.1.4'
  sha256 '390f674e254e3a7e2131b2b159e211f22baf4e9d779f2380618f6d9e5ee425bb'

  url 'https://getspeechify.com/Speechify.zip'
  appcast 'https://getspeechify.com/appcast.xml'
  name 'Speechify'
  homepage 'https://getspeechify.com/'

  app 'Speechify.app'

  uninstall launchctl: 'com.brianhans.LaunchOnLogin',
            quit:      'com.cliffweitzman.speechifydesktop1'

  zap trash: [
               '~/Library/Application Support/com.cliffweitzman.speechifydesktop1',
               '~/Library/Caches/com.cliffweitzman.speechifydesktop1',
               '~/Library/Caches/com.crashlytics.data/com.cliffweitzman.speechifydesktop1',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.cliffweitzman.speechifydesktop1',
               '~/Library/Cookies/com.cliffweitzman.speechifydesktop1.binarycookies',
               '~/Library/Preferences/com.cliffweitzman.speechifydesktop1.plist',
             ]
end
