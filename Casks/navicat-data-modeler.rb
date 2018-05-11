cask 'navicat-data-modeler' do
  version '2.1.17'
  sha256 '94fb444b011d77d634f08d650bd636b6a726b6818ebb7a5ccbc2dc44044ebd41'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  depends_on macos: '>= :lion'

  app 'Navicat Data Modeler.app'
end
