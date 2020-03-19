cask 'cookie' do
  version '6.0.12'
  sha256 '0ae7010a843d8c97a31e86c0d49145f5d229eadce306289ab4f96f2b31c99855'

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
