cask 'navicat-data-modeler' do
  version '2.1.5'
  sha256 '4977dec5f0d5e18acf3bd075c6a725a16390c1900baf54f97b71200255024077'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  name 'Navicat Data Modeler'
  homepage 'http://www.navicat.com/products/navicat-data-modeler'
  license :commercial

  depends_on macos: '>= :lion'
  depends_on arch: :intel

  app 'Navicat Data Modeler.app'
end
