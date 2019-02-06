cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.12'
  sha256 '68b367895f5c87ee670644a70b1645465d33a38acb8d2f86cdc539d548b5aaa6'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :sierra'

  app 'GNS3.app'
end
