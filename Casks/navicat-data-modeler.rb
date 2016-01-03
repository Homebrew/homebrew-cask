cask 'navicat-data-modeler' do
  version '2.1.4'
  sha256 'c549d62da85f0ba32dbbc260929991f84a26705cc4d60abc922496f877a5f546'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  name 'Navicat Data Modeler'
  homepage 'http://www.navicat.com/products/navicat-data-modeler'
  license :commercial

  depends_on :macos => '>= :lion'
  depends_on :arch => :intel

  app 'Navicat Data Modeler.app'
end
