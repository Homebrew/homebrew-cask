cask :v1 => 'navicat-data-modeler' do
  version '2.0.1'
  sha256 '59e7cc70285ecb50abbc5ae59343f5b4426aa87da5d9e3e8206711e68d2b519e'

  url "http://download.navicat.com/download/modeler0#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_en.dmg"
  name 'Navicat Data Modeler'
  homepage 'http://www.navicat.com/products/navicat-data-modeler'
  license :commercial
  tags :vendor => 'Navicat'

  depends_on :macos => '>= :lion'
  depends_on :arch => :intel

  app 'Navicat Data Modeler.app'
end
