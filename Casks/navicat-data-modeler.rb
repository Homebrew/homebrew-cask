cask 'navicat-data-modeler' do
  version '3.0.8'
  sha256 'b1c5510143dad039bafd7f7024e65575531942cf1b88bef7ed956023aa08f43a'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://navicat.com/en/products/navicat-data-modeler-release-note'
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  app 'Navicat Data Modeler.app'
end
