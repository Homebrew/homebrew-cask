cask 'speechify' do
  version '2.1.2'
  sha256 '164b9ab83933eece21b61c92d2f1192f5d89de114f7ccd99bd68f4b2d8a12f80'

  url 'https://getspeechify.com/Speechify.zip'
  appcast 'https://getspeechify.com/appcast.xml',
          checkpoint: 'b0f850709f393d884679ca52c546590b666683b293db2f9469b1fa058d344c70'
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
