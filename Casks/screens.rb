cask 'screens' do
  version '4.1.2,8256'
  sha256 'ec811f69a2bb14944ca258522000243152df5526c30f08df27c6d317f652167d'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens4.mac/Screens#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml",
          checkpoint: 'ff54d074ee503ac77f8d354e0859fe0b84a70c886894b1ea1b691c411a51030b'
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
