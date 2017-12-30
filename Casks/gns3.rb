cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.1'
  sha256 'b912355bca574fe9be3cf3635d7b33b61fa3a87e7f6ef47ca7669c18ded6b6bd'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: 'fb86f8f02b9cf1a6fa7ce8fb37537b8bc944fd6512073a94bfd85813df592ccc'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
