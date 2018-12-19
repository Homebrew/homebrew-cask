cask 'speechify' do
  version '2.1.5'
  sha256 '4975f2f7eb61f722694f56ecd2301b937162cdabff487184a674d5fcefb18bfd'

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
