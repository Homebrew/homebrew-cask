cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.20'
  sha256 '45ae610b779269968b03d863e54124f65034c0ce70c448a7f98b5e7f262cd1da'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :sierra'

  app 'GNS3.app'
end
