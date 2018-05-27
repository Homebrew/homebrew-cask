cask 'piezo' do
  version '1.5.9'
  sha256 '7dd4d0e363c4f2fd2bf23a736405c24a2ed51203a80c98aa2cf1c80e3da16699'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.com/piezo/releasenotes.php',
          checkpoint: '9511f60edd93bc9edfd7e74f4502468e1332ce9c63127f9238a6b6e1ac9ebb06'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  app 'Piezo.app'
end
