cask 'airfoil' do
  version '5.6.0'
  sha256 '19c0344811cad5c6817a5ea2796ee69a4ea4834ba7f500d2ec01a3790591f4b9'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: 'ed7a8b2dcefb1b73ddba8dcbc813d72df513ef760a055a83c5872f7c7a7f7bcd'
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
