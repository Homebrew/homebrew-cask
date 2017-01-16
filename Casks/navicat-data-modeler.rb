cask 'navicat-data-modeler' do
  version '2.1.12'
  sha256 '84ed9e9ea5337dd15f36fceeb2e332168c1116ddb11ec66d0b6b658216761492'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  depends_on macos: '>= :lion'

  app 'Navicat Data Modeler.app'
end
