cask 'speechify' do
  version '2.2.4'
  sha256 '80ceaa94a964da4f20a9fd75f614abefd7afbec9f847c0037ec6dc6a4e23cae9'

  url 'https://getspeechify.com/Speechify.zip'
  appcast 'https://getspeechify.com/appcast.xml'
  name 'Speechify'
  homepage 'https://www.getspeechify.com/'

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
