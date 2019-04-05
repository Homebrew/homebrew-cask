cask 'fission' do
  version '2.4.5'
  sha256 'c876f4e48ddbadbce9d60c56467f98eb592a5ae059647eb9f8172ba64e761eae'

  url 'https://rogueamoeba.com/fission/download/Fission.zip'
  appcast 'https://rogueamoeba.com/fission/releasenotes.php'
  name 'Fission'
  homepage 'https://rogueamoeba.com/fission/'

  app 'Fission.app'
end
