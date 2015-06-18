cask :v1 => 'navicat-data-modeler' do
  version '1.0.7'
  sha256 '72cd4c79d81af9c36b7e6caf484c1b265d8080d5a4f882061f8d2942b63b83d8'

  url "http://download.navicat.com/download/modeler0#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_en.dmg"
  name 'Navicat Data Modeler'
  name 'Navicat Data Modeler'
  homepage 'http://www.navicat.com/products/navicat-data-modeler'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Data Modeler.app'
end
