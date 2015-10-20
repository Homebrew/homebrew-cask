cask :v1 => 'appcleaner' do
  version '3.0.2'
  sha256 'f724d73900036027144234e3edfa6a7ec6971447ab3dab41a2298ddb6caac285'

  url "http://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  name 'AppCleaner'
  appcast 'http://www.freemacsoft.net/appcleaner/Updates.xml',
          :sha256 => '545b9c80a0c03fa2b431ee495ba5f59770c93faa0ff373a33ad5751a520dd2b3'
  homepage 'http://www.freemacsoft.net/appcleaner/'
  license :gratis

  app 'AppCleaner.app'

  zap :delete => [
                  '~/Library/Caches/com.freemacsoft.AppCleaner',
                  '~/Library/Preferences/com.freemacsoft.AppCleaner.plist',
                  '~/Library/Saved Application State/com.freemacsoft.AppCleaner.savedState',
                 ]
end
