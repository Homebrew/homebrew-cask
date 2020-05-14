cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.2.8'
  sha256 'e86154915c869e65b277846b12b68cc34df62daf04ba7cfa54b6ea37020cfc51'

  # github.com/GNS3/gns3-gui/ was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :high_sierra'

  app 'GNS3.app'
end
