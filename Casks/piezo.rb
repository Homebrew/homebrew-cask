cask 'piezo' do
  version '1.5.6'
  sha256 '2691ac0750e8f76fd9aead08189e437e08b715b0e7d655cd420bd20ccae10b85'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10114',
          checkpoint: '3077f58919d381279ae538e1afba1aef54b079f6b1767505acb9fab900187fb1'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  app 'Piezo.app'
end
