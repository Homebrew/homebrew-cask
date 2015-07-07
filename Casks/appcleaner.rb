cask :v1 => 'appcleaner' do
  version '2.3'
  sha256 '69da212e2972e23e361c93049e4b4505d7f226aff8652192125f078be7eecf7f'

  url "http://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  name 'AppCleaner'
  appcast 'http://www.freemacsoft.net/appcleaner/Updates.xml',
          :sha256 => '17390106c7b68aa0da08f0a5ef1cb6b53d595bcff2e9cb45a94f4f136be2b22d'
  homepage 'http://www.freemacsoft.net/appcleaner/'
  license :gratis

  app 'AppCleaner.app'

  zap :delete => [
                  '~/Library/Caches/com.freemacsoft.AppCleaner',
                  '~/Library/Preferences/com.freemacsoft.AppCleaner.plist',
                 ]
end
