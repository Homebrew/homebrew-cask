cask 'fission' do
  version '2.3.1'
  sha256 '93d5b1bb5b64b37b32acc6548c36d6bbbdc9a4a5d0302b13b8a57da8be169360'

  url 'https://rogueamoeba.com/fission/download/Fission.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Fission&version=2000000',
          checkpoint: '1b0862f5ae6ab2616285919faf79054b7d915a3fae2c2dbd86430c2b7e2f6626'
  name 'Fission'
  homepage 'https://rogueamoeba.com/fission/'

  app 'Fission.app'
end
