cask 'cookie' do
  version '6.0'
  sha256 '206595c1a0d29f5417314e3fb8e8ac5286d0f7253ca499f5bba5f8b38693f2e3'

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
