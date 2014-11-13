cask :v1 => 'airfoil' do
  version :latest
  sha256 :no_check

  url 'http://neutral.rogueamoeba.com/mirror/files/Airfoil.zip'
  homepage 'http://www.rogueamoeba.com/airfoil/mac/'
  license :commercial

  app 'Airfoil/Airfoil Speakers.app'
  app 'Airfoil/Airfoil.app'
end
