cask 'screens' do
  version '3.6.11b4828'
  sha256 'c62417cb0b41cbd1122a24ec10e3c1d6706224527c6d20518b4c52b5be6d4568'

  url "https://download.edovia.com/screens/Screens%20#{version}.zip"
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
