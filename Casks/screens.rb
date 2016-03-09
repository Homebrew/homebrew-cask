cask 'screens' do
  version '3.6.9b4770'
  sha256 '818c2598dedd12a37827f27d0ecf111102739ec595be183bb487d281da969366'

  url "http://download.edovia.com/screens/Screens%20#{version}.zip"
  name 'Screens'
  homepage 'https://edovia.com/screens/#mac'
  license :commercial

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
