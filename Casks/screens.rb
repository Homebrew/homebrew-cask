cask 'screens' do
  version '4.0.4,8058'
  sha256 '36519924ffbd5e61c727c98508211a9c650877f48a0f80d5a9a4d3635736c8eb'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens4.mac/Screens#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml",
          checkpoint: '51434aa449ba67ab17ab46b9f350ca3970e23aecc9a7ffdd8e8f30e1c14fc179'
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
