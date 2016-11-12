cask 'airfoil' do
  version '5.5.1'
  sha256 'afba4c1a5c41076714657f7722674ad5352959cb4127df69b0fdf362e3280e9f'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: 'fb1023a31f22c8481dbb3edf499d9523b9c51f361843a66eedaaf24de0e46f44'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'

  app 'Airfoil/Airfoil Satellite.app'
  app 'Airfoil/Airfoil.app'
end
