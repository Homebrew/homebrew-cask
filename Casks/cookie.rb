cask 'cookie' do
  version '6.0.1'
  sha256 'a4cabe46d7494f5f0cf177d3aa4e4c781b985d45654ab015d2e5c1bdf595b372'

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
