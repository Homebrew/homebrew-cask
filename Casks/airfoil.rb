cask 'airfoil' do
  version '5.8.7'
  sha256 '0c06b0a9bc450c00c168b622085df88d83fe38f55dc0af1afa2136d3d7bb6dc1'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
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
