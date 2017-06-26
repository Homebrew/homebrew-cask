cask 'airfoil' do
  version '5.6.1'
  sha256 'cc5f702a8e945554ba3337227511623dc7bf83f76e490275817daa85f4cdf412'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: '7cf89c98aafbd2d8437010a00284cbd4cc8f22ea0dbaf3f59a7c95f3ce8a20db'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Airfoil/Airfoil Satellite.app'
  app 'Airfoil/Airfoil.app'

  zap quit:       [
                    'com.rogueamoeba.Airfoil',
                    'com.rogueamoeba.AirfoilSpeakers',
                  ],
      login_item: 'Airfoil Satellite',
      delete:     [
                    '/Library/Audio/Plug-Ins/HAL/InstantOn.driver',
                    '~/Library/Application Support/Airfoil',
                    '~/Library/Application Support/Airfoil Satellite',
                    '~/Library/Caches/com.rogueamoeba.Airfoil',
                    '~/Library/Caches/com.rogueamoeba.AirfoilSpeakers',
                    '~/Library/Preferences/com.rogueamoeba.Airfoil.plist',
                    '~/Library/Preferences/com.rogueamoeba.AirfoilSpeakers.plist',
                    '~/Library/Saved Application State/com.rogueamoeba.Airfoil.savedState',
                    '~/Library/Saved Application State/com.rogueamoeba.AirfoilSpeakers.savedState',
                  ]
end
