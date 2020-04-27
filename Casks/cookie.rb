cask 'cookie' do
  version '6.0.13'
  sha256 '4a29bb76901ba659c33291a0fe5fd3e3d3eef4fcce95c07045daa8457819f4dc'

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
