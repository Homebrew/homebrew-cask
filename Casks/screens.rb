cask :v1 => 'screens' do
  version '3.6.8b4690'
  sha256 'f452fe0ed4e75ba1637c5557c759b71cc3d6fe7767ad3e176ecba6dd75964587'

  url "http://download.edovia.com/screens/Screens%20#{version}.zip"
  name 'Screens'
  homepage 'https://edovia.com/screens/#mac'
  license :commercial

  app 'Screens.app'

  zap :delete => [
                  '~/Library/Application Support/Screens',
                  '~/Library/Application Support/com.edovia.screens.mac',
                  '~/Library/Caches/com.edovia.screens.mac',
                  '~/Library/Caches/com.edovia.screens.mac',
                  '~/Library/Logs/Screens',
                  '~/Library/Preferences/com.edovia.screens.mac.plist',
                 ]
end
