cask 'navicat-data-modeler' do
  version '3.0.3'
  sha256 '3249ee08b7c59fb066d8ca50718e646cca476e45d45f04ab2defe6a970222ce6'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://navicat.com/en/products/navicat-data-modeler-release-note'
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  app 'Navicat Data Modeler.app'
end
