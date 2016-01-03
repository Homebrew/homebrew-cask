cask 'navicat-data-modeler' do
  version '2.1.4'
  sha256 '62367f5d08f802725216542f6d2482a5635cbefe7c2ca843059525d7077445d0'

  url "http://download.navicat.com/download/modeler0#{version.sub(%r{^(\d+)\.(\d+).*}, '\1\2')}_en.dmg"
  name 'Navicat Data Modeler'
  homepage 'http://www.navicat.com/products/navicat-data-modeler'
  license :commercial

  depends_on :macos => '>= :lion'
  depends_on :arch => :intel

  app 'Navicat Data Modeler.app'
end
