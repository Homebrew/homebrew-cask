cask 'screens' do
  version '4.3.1,11054'
  sha256 '456f2577641085fd4ee977b72227d2351ac3219c5c0a0f85d119aa45fe0bfc43'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens4.mac/Screens#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml",
          checkpoint: '6e719a775dc3f3499c2bbb5687615c405fdc3b80fd755003366f7354fbcb2a3b'
  name 'Screens'
  homepage 'https://edovia.com/screens-mac/'

  app "Screens #{version.major}.app"

  uninstall launchctl: 'com.edovia.screens.launcher',
            quit:      "com.edovia.screens#{version.major}.mac"

  zap delete: [
                "~/Library/Application Scripts/com.edovia.screens#{version.major}.mac",
                '~/Library/Application Scripts/com.edovia.screens.launcher',
                "~/Library/Containers/com.edovia.screens#{version.major}.mac",
                '~/Library/Containers/com.edovia.screens.launcher',
                '~/Library/Logs/Screens',
              ]
end
