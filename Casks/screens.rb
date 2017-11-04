cask 'screens' do
  version '4.3,11036'
  sha256 '18aa501ec38c5141ff7787ee04ece6b1d62f98d41af5a2359e4ee05863892fdc'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens4.mac/Screens#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml",
          checkpoint: 'f78f39f6351b45a5c55b3abc3f3bdd68d35405c0132895cb9e941d0f182cf16d'
  name 'Screens'
  homepage 'https://edovia.com/screens-mac/'

  app "Screens #{version.major}.app"

  uninstall launchctl: 'com.edovia.screens.launcher',
            quit:      "com.edovia.screens#{version.major}.mac"

  zap delete: [
                "~/Library/Application Scripts/com.edovia.screens#{version.major}.mac",
                '~/Library/Application Scripts/com.edovia.screens.launcher',
                "~/Library/Containers/com.edovia.screens#{version.major}.mac",
                '~/Library/Containers/com.edovia.screens.launcher',
                '~/Library/Logs/Screens',
              ]
end
