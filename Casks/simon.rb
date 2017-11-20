cask 'simon' do
  version '4.2.2'
  sha256 '611a50df550d2a446616be1c794a886047c34d79b58c5701e9b7cc06f3e327ac'

  url "http://www.dejal.com/download/simon-#{version}.zip"
  appcast 'http://www.dejal.com/appcast/?prod=simon',
          checkpoint: 'fbf3de413753b075311558115a9bbc72579dd8048316bd816c35d923581d01d0'
  name 'Simon'
  homepage 'http://www.dejal.com/simon/'

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
