cask 'fission' do
  version '2.3.0'
  sha256 'bef0622d1868f443257d537a64f2ff77d4c0b1db81764ea9901821b2f31b1405'

  url 'https://rogueamoeba.com/fission/download/Fission.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Fission&version=2000000',
          checkpoint: 'a2734a4521c4b7f8a41af8407445a129a993152cc69c5c9cbd096be0060d41ab'
  name 'Fission'
  homepage 'https://rogueamoeba.com/fission/'
  license :commercial

  app 'Fission.app'
end
