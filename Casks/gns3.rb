cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.2.7'
  sha256 'dc7fa25f531623e58d2e084ce0dc2389f6b5b01390a12fc8358b216581fc1236'

  # github.com/GNS3/gns3-gui/ was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :high_sierra'

  app 'GNS3.app'
end
