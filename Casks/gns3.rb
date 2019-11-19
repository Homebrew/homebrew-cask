cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.2.3'
  sha256 'c744c9d74f439317d18d4539ebc2c5eb3cd5ff2cf681383e4d1acef83d0a790a'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :high_sierra'

  app 'GNS3.app'
end
