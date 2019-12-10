cask 'navicat-data-modeler' do
  version '3.0.2'
  sha256 '1419f0117de9f6d7914c5d21dad34d56d42c857fec9a79cb760182e58391898a'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://navicat.com/en/products/navicat-data-modeler-release-note'
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  app 'Navicat Data Modeler.app'
end
