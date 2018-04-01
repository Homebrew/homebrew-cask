cask 'navicat-data-modeler' do
  version '2.1.15'
  sha256 '26e33929023bdcad43c434f362b8e9240de4b0f4fc74ef0835916913095b182d'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  depends_on macos: '>= :lion'

  app 'Navicat Data Modeler.app'
end
