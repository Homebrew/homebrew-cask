cask 'screens' do
  version '4.0.1,7824'
  sha256 'a5e1d3b0a199516ba4abdfa2589e93b558799937eba28f090654464e0d2f286a'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens4.mac/Screens#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml",
          checkpoint: '3999c3335ce2eefca667a39a2054a144e58e2b0887bff64aa92c045e8f84e449'
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
