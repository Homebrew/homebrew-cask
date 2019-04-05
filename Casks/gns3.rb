cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.15'
  sha256 '8b95eb1f5fa0155e5f40adff548292a6714b77562830a00a203c8e6cde60823c'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :sierra'

  app 'GNS3.app'
end
