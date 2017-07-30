cask 'fission' do
  version '2.3.2'
  sha256 '06d5b82042cc725583807282809f9be18800034306b8408a55475102566d9fff'

  url 'https://rogueamoeba.com/fission/download/Fission.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Fission&version=2000000',
          checkpoint: '1b0862f5ae6ab2616285919faf79054b7d915a3fae2c2dbd86430c2b7e2f6626'
  name 'Fission'
  homepage 'https://rogueamoeba.com/fission/'

  app 'Fission.app'
end
