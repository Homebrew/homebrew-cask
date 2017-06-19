cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.0.3'
  sha256 'f10f1ad5b0622f09f4c9e0c84c5bdd9ce7b29c14ad26d2dec0f7b884822d9dea'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: '7f9723fb47b9666f132c1d1fc0fbd3bf5dbed340cf7fd46450d38e97908aefec'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
