cask 'screens' do
  version '4.0.2,7896'
  sha256 '89b28db0c3f1624d59dde64c2ccad13cf8be04b9a11512aa06c641d0bf2c4336'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens4.mac/Screens#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml",
          checkpoint: 'f287f5f113fc33555d74adc2281b77684b6133a843f31afa3175e59ad93f1455'
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
