cask 'airfoil' do
  version '5.6.3'
  sha256 '24b06813151e3bf74e7edc7fa15bc65201355a4b94a62308212e8d35f8e84f08'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: '5ee3adc0ff7108d20a9134c764c0d43dd82c675e5e3f0eaaddc7955c02e9e0c1'
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
