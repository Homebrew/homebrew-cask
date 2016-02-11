cask 'airfoil' do
  version :latest
  sha256 :no_check

  # d2oxtzozd38ts8.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2oxtzozd38ts8.cloudfront.net/airfoil/download/Airfoil.zip'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'
  license :commercial

  app 'Airfoil/Airfoil Speakers.app'
  app 'Airfoil/Airfoil.app'
end
