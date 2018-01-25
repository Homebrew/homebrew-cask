cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.3'
  sha256 'c85068e09a4a926b7707c663beb7f226844018cc239bd2bb655e2e19cc307937'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: 'acc96a409e008e3e008718141f51233ebc91cdc6bfba6c34897363acd87cecd7'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
