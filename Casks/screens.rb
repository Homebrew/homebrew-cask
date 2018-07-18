cask 'screens' do
  version '4.5.7,21954:1531418883'
  sha256 'faa6dc779025a14356a4417ee2b8899b234e5086337d38f1f0d470a4ed079ca7'

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
