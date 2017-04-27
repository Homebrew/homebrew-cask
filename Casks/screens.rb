cask 'screens' do
  version '3.8.7'
  sha256 'b59924846a4e0d6bda05626657c06a17d43ae564a2c9307de349bcf885f45e6a'

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
