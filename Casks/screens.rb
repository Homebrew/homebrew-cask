cask 'screens' do
  version '3.8.4'
  sha256 '340fbcfee35b7eacd170e58cbcd2d9f3ca6078ef54371f245115d74c55e46ce3'

  url "https://download.edovia.com/screens/Screens_#{version}.zip"
  appcast 'https://edovia.com/screens/',
          checkpoint: 'afbc9761b0f6069adf295371727c6505eadc088aba11bec329c4af4fd25ed3f1'
  name 'Screens'
  homepage 'https://edovia.com/screens/#mac'

  app 'Screens.app'

  zap delete: [
                '~/Library/Application Support/Screens',
                '~/Library/Application Support/com.edovia.screens.mac',
                '~/Library/Caches/com.edovia.screens.mac',
                '~/Library/Caches/com.edovia.screens.mac',
                '~/Library/Logs/Screens',
                '~/Library/Preferences/com.edovia.screens.mac.plist',
              ]
end
