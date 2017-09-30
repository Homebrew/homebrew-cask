cask 'airfoil' do
  version '5.6.4'
  sha256 'd12a256e9c35c5a71ff028bf39216475400a34d147fe323c79d810b98bfc0e32'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: '33f7e7ab6b0fb74f0b442f98e09cec467cd2673313d3ca2aab1e7197cddaa10a'
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
