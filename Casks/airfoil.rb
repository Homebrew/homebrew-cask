class Airfoil < Cask
  version 'latest'
  sha256 :no_check

  url 'http://neutral.rogueamoeba.com/mirror/files/Airfoil.zip'
  homepage 'http://www.rogueamoeba.com/airfoil/mac/'

  app 'Airfoil/Airfoil Speakers.app'
  app 'Airfoil/Airfoil.app'
end
