cask 'harvest' do
  version '1.5.0'
  sha256 '7c5ba5e44c39f7630627b82b221367fbf2a1b67e057c51890d0b4d629ff24852'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          :checkpoint => '7a16d3ed0b19d1eddd65878d9dd9ff5fa96783d5fd5a26a8d2df45a8b06dedb5'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :gratis

  app 'Harvest.app'
end
