cask 'piezo' do
  version '1.5.1'
  sha256 '4c5f86719f2c2591af2792eaf0bfeea32a2c1a05ef07c8fa03892cff03ee75df'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10114',
          checkpoint: '59c39553eb0e15288033326ccbea32a9e4a29ecd6cddb0675ef1c77f408ffcc6'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'
  license :commercial

  app 'Piezo.app'
end
