cask 'screens' do
  version '4.3.4,11198'
  sha256 'bf8ce29c4c5c99f388749c5831153a17c77b11075f50b8cb13abfd9f38e2a428'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens#{version.major}.mac/Screens#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml",
          checkpoint: 'ea7235f68e35670b10571d54949e3a280ee13146f6ffa2f5ef264cca82829a4e'
  name 'Screens'
  homepage 'https://edovia.com/screens-mac/'

  app "Screens #{version.major}.app"

  uninstall launchctl: 'com.edovia.screens.launcher',
            quit:      "com.edovia.screens#{version.major}.mac"

  zap trash: [
               "~/Library/Application Scripts/com.edovia.screens#{version.major}.mac",
               '~/Library/Application Scripts/com.edovia.screens.launcher',
               "~/Library/Containers/com.edovia.screens#{version.major}.mac",
               '~/Library/Containers/com.edovia.screens.launcher',
               '~/Library/Logs/Screens',
             ]
end
