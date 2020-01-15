cask 'navicat-data-modeler' do
  version '3.0.4'
  sha256 '778059fe1a143f8638c19472247ea202b1e60380a7695cc98a847f90de10961a'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://navicat.com/en/products/navicat-data-modeler-release-note'
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  app 'Navicat Data Modeler.app'
end
