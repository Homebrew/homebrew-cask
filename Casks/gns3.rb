cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.14'
  sha256 '3a0a1b8f586d4e0bcfe63fc5f801b597ea2a389f5502f5e5ed28b6eb50d784f7'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :sierra'

  app 'GNS3.app'
end
