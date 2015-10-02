cask :v1 => 'appcleaner' do
  version '3.0'
  sha256 '277dcf9ef37a4bb896c505dd895926f0b861a0125808c53e9b2f63ca67f3fe0b'

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
                  '~/Library/Saved Application State/com.freemacsoft.AppCleaner.savedState',
                 ]
end
