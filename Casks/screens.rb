cask 'screens' do
  version '4.1,8220'
  sha256 '7df9f2db1f2026d38b5513d822e747dc9a893d296c5dcb988e43af1192f6c70d'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens4.mac/Screens#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml",
          checkpoint: '42251e0e4d7edb68e47697a18438373f03ccc0623f840abde5b41ab47d7eb685'
  name 'Screens'
  homepage 'https://edovia.com/screens-mac/'

  app "Screens #{version.major}.app"

  uninstall launchctl: 'com.edovia.screens.launcher',
            quit:      "com.edovia.screens#{version.major}.mac"

  zap delete: [
                "~/Library/Application Scripts/com.edovia.screens#{version.major}.mac",
                "~/Library/Containers/com.edovia.screens#{version.major}.mac",
                '~/Library/Logs/Screens',
              ]
end
