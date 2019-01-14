cask 'screens' do
  version '4.6.6'
  sha256 '38ca6f839754bcf046dea14452ed8f2c0dc583556d2fa43bc8a53ec8dc2f6554'

  # dl.devmate.com/com.edovia.screens4.mac was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.edovia.screens4.mac/Screens4.dmg'
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml"
  name 'Screens'
  homepage 'https://edovia.com/screens-mac/'

  auto_updates true
  depends_on macos: '>= :sierra'

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
