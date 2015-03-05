cask :v1 => 'navicat-data-modeler' do
  version '1.0.6'
  sha256 '1e94285c57e2d851b713fc9adff0dee8e424c4e445f819cef986402592e5f488'

  url "http://download.navicat.com/download/modeler0#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_en.dmg"
  name 'Navicat Data Modeler'
  name 'Navicat Data Modeler'
  homepage 'http://www.navicat.com/products/navicat-data-modeler'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Data Modeler.app'
end
