cask 'navicat-data-modeler' do
  version '2.1.19'
  sha256 '792f661751a0f668f601e85a1b4f29295c37f08380defc2acefa597f0eae8cff'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-data-modeler-release-note'
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  depends_on macos: '>= :lion'

  app 'Navicat Data Modeler.app'
end
