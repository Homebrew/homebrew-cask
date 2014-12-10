cask :v1 => 'subnetcalc' do
  version '1.1'
  sha256 '19157baacac0cede6849356cb305a0ed2e4290e1e9e8ac4b691fd1d7ce1920cf'

  url "http://subnetcalc.free.fr/download/subnetcalc-#{version}.dmg"
  homepage 'http://subnetcalc.free.fr/'
  license :unknown    # todo: improve this machine-generated value

  app 'SubnetCalc.app'
end
