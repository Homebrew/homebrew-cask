cask :v1 => 'appcleaner' do
  version '3.1.1'
  sha256 '2b9b184e270fd3ea7e16327c495aaf809aa1136d6288fc183bc13f74726c70a1'

  url "http://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  name 'AppCleaner'
  appcast 'http://www.freemacsoft.net/appcleaner/Updates.xml',
          :sha256 => '65439f2e1faab26ff1e45b0f49456b94a5b186f361df0f57f3a9571070693916'
  homepage 'http://www.freemacsoft.net/appcleaner/'
  license :gratis

  app 'AppCleaner.app'

  zap :delete => [
                  '~/Library/Caches/com.freemacsoft.AppCleaner',
                  '~/Library/Preferences/com.freemacsoft.AppCleaner.plist',
                  '~/Library/Saved Application State/com.freemacsoft.AppCleaner.savedState',
                 ]
end
