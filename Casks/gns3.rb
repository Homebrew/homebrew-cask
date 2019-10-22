cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.2.0'
  sha256 '97d24a2a54cfc8548f5d70343734a7f8818899bb59853706cc1d930aa971d3bc'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :sierra'

  app 'GNS3.app'
end
