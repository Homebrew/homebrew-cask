cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.2.1'
  sha256 '428adf9b8134e7de5a096cbb755e5fc5fef35acbb52f62a452402c58e11ad9c5'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :sierra'

  app 'GNS3.app'
end
