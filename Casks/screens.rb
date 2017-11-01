cask 'screens' do
  version '4.2.2,10054'
  sha256 '158422fa98a06ee46538153dfba341ee3e5c8ae9555db37d9bc3b45c7d40630f'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens4.mac/Screens#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml",
          checkpoint: 'a45dbe4433e116e2392aabdde21d99cfb306f0566d059a81da23cd7e4db5426f'
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
