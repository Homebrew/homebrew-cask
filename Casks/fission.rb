cask 'fission' do
  version '2.3.3'
  sha256 '569adde95c98453b2fcc8ddce76ba757a9470b6b308666bad125a5f992b2ca48'

  url 'https://rogueamoeba.com/fission/download/Fission.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Fission&version=2000000',
          checkpoint: '1b0862f5ae6ab2616285919faf79054b7d915a3fae2c2dbd86430c2b7e2f6626'
  name 'Fission'
  homepage 'https://rogueamoeba.com/fission/'

  app 'Fission.app'
end
