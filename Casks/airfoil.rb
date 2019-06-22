cask 'airfoil' do
  version '5.8.5'
  sha256 'fe1c080d9c1a6a9c04c9ab9f2ba4114e24af667cb2291044c845729fddfb8c89'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'

  auto_updates true

  app 'Airfoil/Airfoil Satellite.app'
  app 'Airfoil/Airfoil.app'

  uninstall delete:     '/Library/Audio/Plug-Ins/HAL/InstantOn.driver',
            login_item: 'Airfoil Satellite',
            quit:       [
                          'com.rogueamoeba.Airfoil',
                          'com.rogueamoeba.AirfoilSpeakers',
                        ]

  zap trash: [
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
