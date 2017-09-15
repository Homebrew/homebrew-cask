cask 'fission' do
  version '2.4.0'
  sha256 '851874e74369aa43aa18ee1134e75497dd8bb65707e26d361a8feab1929eceb8'

  url 'https://rogueamoeba.com/fission/download/Fission.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Fission&version=2000000',
          checkpoint: '1b0862f5ae6ab2616285919faf79054b7d915a3fae2c2dbd86430c2b7e2f6626'
  name 'Fission'
  homepage 'https://rogueamoeba.com/fission/'

  app 'Fission.app'
end
