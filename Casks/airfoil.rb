cask 'airfoil' do
  version '5.7.4'
  sha256 '344206308e0ee96296a55c8a39ca270b67e66c9028702bf34a780ba0aadeea6d'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: '587696c4070a586228ba6062c0c707315ef82a1315ecba7e48ed8935c2be75de'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'

  auto_updates true
  depends_on macos: '>= :mavericks'

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
