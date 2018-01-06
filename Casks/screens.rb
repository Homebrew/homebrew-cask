cask 'screens' do
  version '4.3.7,11270:1515171433'
  sha256 '52d7021139a3b3ea71b7530ebc9678d608dc3f49d15011e6dbc619747883d6d5'

  # dl.devmate.com/com.edovia.screens4.mac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.screens4.mac/#{version.after_comma.before_colon}/#{version.after_colon}/Screens#{version.major}-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/com.edovia.screens#{version.major}.mac.xml",
          checkpoint: '0f6484b458499028b4d4b6850c5b2fc48d2201ecb4f474f2640c5fb2f9131363'
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
