cask 'gns3' do
  version '1.4.4'
  sha256 '97a16320af4e52bee67ca10101305caf78dc04c208a378c8ff2716ca89872609'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: '464419f41393cae4f4c9fa8aa9611e4292dd7ee58931009b151ce6b6637f9ad4'
  name 'GNS3'
  homepage 'https://www.gns3.com/'
  license :gpl

  app 'GNS3.app'
end
