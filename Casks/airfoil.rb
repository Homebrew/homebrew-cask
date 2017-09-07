cask 'airfoil' do
  version '5.6.2'
  sha256 '0efe57559b8da1e16e0b792b6fb72e33870d3d7db9bd1876abaa5293a7730f6f'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: 'd8e99a22465aa4eed0e5e59e9f91487bf615b7f8925fd4f19bfdac33e2876e01'
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
