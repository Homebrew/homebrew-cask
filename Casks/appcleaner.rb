cask :v1 => 'appcleaner' do
  version '3.1'
  sha256 'a2adecf5ed63f712554af724a7cf91b8533c505766a6a26d541ec9f227a57a4d'

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
