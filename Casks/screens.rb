cask 'screens' do
  version '4.0.3,7986'
  sha256 'f2cbb75e665a834223153eb8030572825586322b731454e0c7ed0ed549e9bec8'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens4.mac/Screens#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml",
          checkpoint: '1820bb69ff0728e49cc2f53379052d091da5b9d0fa1cb190698b0a4a181810f8'
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
