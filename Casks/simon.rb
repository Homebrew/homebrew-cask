cask 'simon' do
  version '4.3.1'
  sha256 '7e102e1309630df4c57827575659df5ce3daab9950d821e0807909832dfb09e7'

  url "https://www.dejal.com/download/simon-#{version}.zip"
  appcast 'https://www.dejal.com/appcast/?prod=simon'
  name 'Simon'
  homepage 'https://www.dejal.com/simon/'

  app 'Simon.app'

  uninstall login_item: 'Simon Launcher',
            quit:       'com.dejal.simon'

  zap trash: [
               '~/Library/Application Support/.Dejal/Simon.dejallicenses',
               '~/Library/Application Support/com.crashlytics/com.dejal.simon',
               '~/Library/Application Support/Dejal/Simon',
               '~/Library/Caches/com.crashlytics.data/com.dejal.simon',
               '~/Library/Caches/com.dejal.simon',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.dejal.simon',
               '~/Library/Cookies/com.dejal.simon.binarycookies',
               '~/Library/Preferences/com.dejal.simon.plist',
               '~/Library/Saved Application State/com.dejal.simon.savedState',
             ]
end
