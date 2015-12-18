cask 'subnetcalc' do
  version '1.1'
  sha256 '19157baacac0cede6849356cb305a0ed2e4290e1e9e8ac4b691fd1d7ce1920cf'

  url "http://subnetcalc.free.fr/download/subnetcalc-#{version}.dmg"
  name 'SubnectCalc'
  homepage 'http://subnetcalc.free.fr/'
  license :gpl

  app 'SubnetCalc.app'
end
