cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.16'
  sha256 'ce4aa0895223a42c26baf9a8dd13ac6665437c42663a0e3dfc7d6ddb065f0dee'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :sierra'

  app 'GNS3.app'
end
