cask :v1 => 'navicat-for-oracle' do
  version '11.1.15'
  sha256 '9414e3497833e19283aa7101fec085cef5c50ec2021259811428cec5e6af7477'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'http://www.navicat.com/products/navicat-for-oracle'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for Oracle.app'
end
