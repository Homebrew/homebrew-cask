cask :v1 => 'navicat-data-modeler' do
  version '2.0.4'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://download.navicat.com/download/modeler0#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_en.dmg"
  name 'Navicat Data Modeler'
  homepage 'http://www.navicat.com/products/navicat-data-modeler'
  license :commercial
  tags :vendor => 'Navicat'

  depends_on :macos => '>= :lion'
  depends_on :arch => :intel

  app 'Navicat Data Modeler.app'
end
