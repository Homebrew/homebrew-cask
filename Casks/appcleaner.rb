cask :v1 => 'appcleaner' do
  version '3.2'
  sha256 'a44c883999de158cd4a546d83c8084aeb037367ae2b8c0b1e16e56af70eee48b'

  url "http://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  name 'AppCleaner'
  appcast 'http://www.freemacsoft.net/appcleaner/Updates.xml',
          :sha256 => 'bd9df047d51943acc4bc6cf55d88edb5b6785a53337ee2a0f74dd521aedde87d'
  homepage 'http://www.freemacsoft.net/appcleaner/'
  license :gratis

  app 'AppCleaner.app'

  zap :delete => [
                  '~/Library/Caches/com.freemacsoft.AppCleaner',
                  '~/Library/Preferences/com.freemacsoft.AppCleaner.plist',
                  '~/Library/Saved Application State/com.freemacsoft.AppCleaner.savedState',
                 ]
end
