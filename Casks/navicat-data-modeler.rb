cask 'navicat-data-modeler' do
  version '2.1.20'
  sha256 'e91803229fdb610f47210d299b6162685f47972b5997d0c0e76b2984fa24b34b'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-data-modeler-release-note'
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  depends_on macos: '>= :lion'

  app 'Navicat Data Modeler.app'
end
