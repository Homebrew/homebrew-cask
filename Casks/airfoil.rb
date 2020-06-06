cask 'airfoil' do
  version '5.9.1'
  sha256 '4c62d7b5b8045b1f6adc07b1f4167341ed65978259f83bb817812903282080c6'

  url 'https://rogueamoeba.com/airfoil/mac/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Airfoil/Airfoil Satellite.app'
  app 'Airfoil/Airfoil.app'

  uninstall delete: '/Library/Audio/Plug-Ins/HAL/InstantOn.driver',
            quit:   [
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
