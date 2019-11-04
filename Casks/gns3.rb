cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.2.2'
  sha256 'b2ee3e7657204b53d7b7ec8196c23e4c58192fcdf4dccb002ee82da4c2690837'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :high_sierra'

  app 'GNS3.app'
end
