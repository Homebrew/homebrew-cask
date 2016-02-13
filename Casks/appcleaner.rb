cask 'appcleaner' do
  version '3.3'
  sha256 'a856e3e08af2ae972582c3a75403086413295d1a38d86a3e2d5f6abff7505fdd'

  url "https://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  appcast 'https://freemacsoft.net/appcleaner/Updates.xml',
          checkpoint: '63e0e7e6bfabfe3edef0e5e2ce454b6abf25a3145494007bfb4f20c2f873b051'
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
