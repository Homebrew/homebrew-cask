cask 'piezo' do
  version '1.5.0'
  sha256 'd125a0186210efd645995aec7fc630285a12afc4aee57560932a6ce6135cbc8c'

  url 'http://d2oxtzozd38ts8.cloudfront.net/piezo/download/Piezo.zip'
  appcast 'http://rogueamoeba.com/piezo/releasenotes.php',
          checkpoint: '9a562edc4de11f86edfd324e7c4afeaefa27dd9aecfe636a79ce037f8e910947'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'
  license :commercial

  app 'Piezo.app'
end
