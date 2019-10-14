cask 'cookie' do
  version '6.0.3'
  sha256 '9023ac2ee21537d25da8ea35086388387c05bce1ea7fb1bf1b242b92ac0f6680'

  url 'https://sweetpproductions.com/products/cookieapp/Cookie.dmg'
  appcast 'https://sweetpproductions.com/products/cookieapp/appcast.xml'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'

  depends_on macos: '>= :mojave'

  app 'Cookie.app'

  zap trash: [
               '~/Library/Application Scripts/com.sweetpproductions.Cookie5',
               '~/Library/Containers/com.sweetpproductions.Cookie5',
               '~/Library/Preferences/com.sweetpproductions.Cookie5.plist',
               '~/Library/Application Scripts/com.sweetpproductions.CookieApp',
               '~/Library/Containers/com.sweetpproductions.CookieApp',
               '~/Library/Preferences/com.sweetpproductions.CookieApp.plist',
             ]
end
