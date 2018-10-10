cask 'fission' do
  version '2.4.3'
  sha256 'fd9d26c90ec633e5011f33a729484ccf0af154d12dc269509e0d5700e735b322'

  url 'https://rogueamoeba.com/fission/download/Fission.zip'
  appcast 'https://rogueamoeba.com/fission/releasenotes.php'
  name 'Fission'
  homepage 'https://rogueamoeba.com/fission/'

  app 'Fission.app'
end
