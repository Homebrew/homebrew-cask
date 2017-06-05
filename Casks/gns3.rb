cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.0.2'
  sha256 '1c7a615cc81c1e7084d7c5f3d588bbfb22b73d9309be4326a01d4da29b9a9758'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: 'b4c6212f3079363b3c2b6369ff56518545fd7bb969c61ed9cb5cbc238edd9d96'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
