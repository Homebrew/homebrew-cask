cask 'navicat-data-modeler-essentials' do
  version '2.1.20'
  sha256 'd8e71b88d12b1fa04a86f64bf6a118807d335b485c87b979ab33700e851c76d2'

  url "http://download.navicat.com/download/modeleress0#{version.major_minor.no_dots}_en.dmg"
  name 'Navicat Data Modeler Essentials'
  homepage 'https://www.navicat.com/en/products/navicat-data-modeler'

  depends_on macos: '>= :yosemite'

  app 'Navicat Data Modeler Essentials.app'
end
