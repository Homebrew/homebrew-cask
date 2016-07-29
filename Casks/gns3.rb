cask 'gns3' do
  version '1.5.1'
  sha256 '4769c15ae372482369bebae6ebea3a356fdfe138fa8882a60708c8bbe7cd788a'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: 'ebe5570ab80918508ebe725264d04d98abe08127368addb6135534e68474e3f9'
  name 'GNS3'
  homepage 'https://www.gns3.com/'
  license :gpl

  app 'GNS3.app'
end
