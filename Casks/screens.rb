cask 'screens' do
  version '4.3.3,11180'
  sha256 'd31da8f7d800cd4f158bd68ac03ca29e9d9119fa8f0024aa5f72baf2eb38d927'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens#{version.major}.mac/Screens#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml",
          checkpoint: 'e89d9ec58c4f06f9a9af0617a3c00ca6f15c5921cb2a723f5f27b0598cbe9cb8'
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
