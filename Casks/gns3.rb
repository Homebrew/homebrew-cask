cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.2.5'
  sha256 '68c421fa1568a518234084d9982f1d8f12fe228d6fdc5f204906d3b30ebe4071'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :high_sierra'

  app 'GNS3.app'
end
