cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.2.4'
  sha256 'f806d50a95fbee5fbe86f591978466859d1e1f310f00a1f3e73f39861a940164'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :high_sierra'

  app 'GNS3.app'
end
