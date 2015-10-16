cask :v1 => 'navicat-data-modeler' do
  version '2.0.6'
  sha256 '02b0dcb81329e6f950fadee9145f0b8ec42774a9b3c6570ff57ad8ab44ba356c'

  url "http://download.navicat.com/download/modeler0#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_en.dmg"
  name 'Navicat Data Modeler'
  homepage 'http://www.navicat.com/products/navicat-data-modeler'
  license :commercial
  tags :vendor => 'Navicat'

  depends_on :macos => '>= :lion'
  depends_on :arch => :intel

  app 'Navicat Data Modeler.app'
end
