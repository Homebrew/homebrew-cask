cask 'screens' do
  version '4.5.2,21666:1524169576'
  sha256 'c1387c30386a4ac27106d2f3912d6830108704497042822676ed36881d6067d4'

  # dl.devmate.com/com.edovia.screens4.mac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens4.mac/#{version.after_comma.before_colon}/#{version.after_colon}/Screens#{version.major}-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml",
          checkpoint: '4549c8c3fe396f963e529233dd5af3f1be1b95e8e2b00b3023b268adfeb2964a'
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
