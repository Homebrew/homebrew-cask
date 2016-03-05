cask 'airfoil' do
  version '5.0.1'
  sha256 'b8eae684f18afeee4bcd619d3149c140e1d8b9b7a9e5a4b5dda3a7daeddf6a8b'

  # d2oxtzozd38ts8.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2oxtzozd38ts8.cloudfront.net/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: 'e7b157a9a776dc4f72b31940e2096dfca02d2accb758cbe430a0ecbf042a1fcc'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'
  license :commercial

  app 'Airfoil/Airfoil Satellite.app'
  app 'Airfoil/Airfoil.app'
end
