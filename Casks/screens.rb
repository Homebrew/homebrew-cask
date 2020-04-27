cask 'screens' do
  version '4.7.5,25638'
  sha256 'da229825486bbc13fd7ba4c6d9121425869902d751885dc652620d8804467352'

  url "https://updates.edovia.com/com.edovia.screens#{version.major}.mac/Screens_#{version.before_comma}b#{version.after_comma}.zip"
  appcast "https://updates.edovia.com/com.edovia.screens#{version.major}.mac/appcast.xml"
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
