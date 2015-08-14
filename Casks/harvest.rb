cask :v1 => 'harvest' do
  version '1.4.2'
  sha256 '1c1945d27b87943ca62d125d6f125ab9d3222ca62e028c062759e41892296e39'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Harvest.app'
end
