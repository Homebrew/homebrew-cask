cask 'screens' do
  version '4.1.4,8346'
  sha256 '70e39bb2568047d8fd5a84a7836d9e31ee219750180b7a25262e53ad5b2e1c8c'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens4.mac/Screens#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml",
          checkpoint: '16ebd7e4037c31235e179162267717416b8387d777247e73910ccf6267873ec4'
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
