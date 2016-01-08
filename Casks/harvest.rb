cask 'harvest' do
  version '1.5.0'
  sha256 '7c5ba5e44c39f7630627b82b221367fbf2a1b67e057c51890d0b4d629ff24852'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          :sha256 => '3bd5aebc25e68829cc56cfd9984254a7c018b7c5254c389b2d62d0dd8dfe296b'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :gratis

  app 'Harvest.app'
end
