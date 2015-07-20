cask :v1 => 'navicat-data-modeler' do
  version '2.0.3'
  sha256 'a6879216efb39217d2f76ecea276480db5969964b12157f442e3ab8561fed91d'

  url "http://download.navicat.com/download/modeler0#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_en.dmg"
  name 'Navicat Data Modeler'
  homepage 'http://www.navicat.com/products/navicat-data-modeler'
  license :commercial
  tags :vendor => 'Navicat'

  depends_on :macos => '>= :lion'
  depends_on :arch => :intel

  app 'Navicat Data Modeler.app'
end
