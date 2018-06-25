cask 'screens' do
  version '4.5.5,21918:1528124912'
  sha256 'f03aa02745085bb488ee5b0c9e6449afa6a903636407131d38fc09108bc802c1'

  # dl.devmate.com/com.edovia.screens4.mac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens4.mac/#{version.after_comma.before_colon}/#{version.after_colon}/Screens#{version.major}-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml"
  name 'Screens'
  homepage 'https://edovia.com/screens-mac/'

  depends_on macos: '>= :el_capitan'

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
