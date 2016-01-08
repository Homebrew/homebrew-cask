cask 'appcleaner' do
  version '3.2.1'
  sha256 '96ba58688df66dd605b9e109d3c75726eab143193a25c2c2c9e3ddcb5135ad09'

  url "https://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  appcast 'https://freemacsoft.net/appcleaner/Updates.xml',
          :sha256 => 'f0f46578d7d6f9a4913af8774dd5fd71921f146b43c344b29fd449c6cd54b8e1'
  name 'AppCleaner'
  homepage 'https://www.freemacsoft.net/appcleaner/'
  license :gratis

  app 'AppCleaner.app'

  zap :delete => [
                   '~/Library/Caches/com.freemacsoft.AppCleaner',
                   '~/Library/Preferences/com.freemacsoft.AppCleaner.plist',
                   '~/Library/Saved Application State/com.freemacsoft.AppCleaner.savedState',
                 ]
end
