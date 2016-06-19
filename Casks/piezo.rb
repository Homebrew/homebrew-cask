cask 'piezo' do
  version '1.5.0'
  sha256 'd125a0186210efd645995aec7fc630285a12afc4aee57560932a6ce6135cbc8c'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10114',
          checkpoint: '77b548e102d35c380b8ac61c23ae51d061d801110f30dff1cf68b0db772d45e3'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'
  license :commercial

  app 'Piezo.app'
end
