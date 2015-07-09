cask :v1 => 'navicat-data-modeler' do
  version '2.0.2'
  sha256 '1357fac438dce3ec0741bd20012d11a380352ccb261e9bc0437febfa254596b9'

  url "http://download.navicat.com/download/modeler0#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_en.dmg"
  name 'Navicat Data Modeler'
  homepage 'http://www.navicat.com/products/navicat-data-modeler'
  license :commercial
  tags :vendor => 'Navicat'

  depends_on :macos => '>= :lion'
  depends_on :arch => :intel

  app 'Navicat Data Modeler.app'
end
