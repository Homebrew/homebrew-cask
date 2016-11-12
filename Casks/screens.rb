cask 'screens' do
  version '3.8.3'
  sha256 '880b7293875e394288e680b2a27a70c218adf313ac290be1049611765a5e81ca'

  url "https://download.edovia.com/screens/Screens_#{version}.zip"
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
