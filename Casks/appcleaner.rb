cask 'appcleaner' do
  version '3.2.1'
  sha256 '96ba58688df66dd605b9e109d3c75726eab143193a25c2c2c9e3ddcb5135ad09'

  url "https://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  appcast 'https://freemacsoft.net/appcleaner/Updates.xml',
          checkpoint: 'f231315156c6d1e158dbbd5d11b4b4e36d2ba0bab343e0e87d55d0af3e4d8596'
  name 'AppCleaner'
  homepage 'https://www.freemacsoft.net/appcleaner/'
  license :gratis

  app 'AppCleaner.app'

  zap delete: [
                '~/Library/Caches/com.freemacsoft.AppCleaner',
                '~/Library/Preferences/com.freemacsoft.AppCleaner.plist',
                '~/Library/Saved Application State/com.freemacsoft.AppCleaner.savedState',
              ]
end
