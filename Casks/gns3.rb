cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.4'
  sha256 '19c511b56def69252f67d8504c11f931eed62d13374b5653b60ee42f58e8f356'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: '25929630a91c34a5e2013252bf76a8d287df28598206993aacccb014295dfe17'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
