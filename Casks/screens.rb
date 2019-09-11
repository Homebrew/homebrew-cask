cask 'screens' do
  version '4.6.11'
  sha256 '1156fe32dd27239466d2910c07c4ad2142b0d70d4f55e2edb0dfa96ccc42930e'

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
