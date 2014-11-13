cask :v1 => 'navicat-data-modeler' do
  version '1.0.5'
  sha256 'de0f1dbb450401f9ce29948886b60167508ccca621162a9ab9a805d54d574bbb'

  url "http://download.navicat.com/download/modeler0#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_en.dmg"
  homepage 'http://www.navicat.com/products/navicat-data-modeler'
  license :commercial

  app 'Navicat Data Modeler.app'
end
