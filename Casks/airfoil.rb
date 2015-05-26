cask :v1 => 'airfoil' do
  version :latest
  sha256 :no_check

  # cloudfront.net is the official download host per the vendor homepage
  url 'https://d2oxtzozd38ts8.cloudfront.net/airfoil/download/Airfoil.zip'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'
  license :commercial

  app 'Airfoil/Airfoil Speakers.app'
  app 'Airfoil/Airfoil.app'
end
