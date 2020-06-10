cask 'screens' do
  version '4.7.6,25656'
  sha256 '04e36f0e5f5db55390976f6f35b8dd323a26c391b3077a8165c7559df182220d'

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
