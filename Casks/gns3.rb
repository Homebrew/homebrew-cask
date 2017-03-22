cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '1.5.3'
  sha256 '5c5498883a626563f50c7da7bf7ed7232d1937373bc6f2592a4cdd106505d926'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: '0de7220e36db7890c7a778248dac66c1fca4835387d2a28273cd698f2c180b69'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
