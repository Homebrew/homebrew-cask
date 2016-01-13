cask 'appcleaner' do
  version '3.2.1'
  sha256 '96ba58688df66dd605b9e109d3c75726eab143193a25c2c2c9e3ddcb5135ad09'

  url "https://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  appcast 'https://freemacsoft.net/appcleaner/Updates.xml',
          :sha256 => 'a5aefca431912c0491987b99aab0584c0143b2dc3b1a30f29887b7cee5ae4c45'
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
