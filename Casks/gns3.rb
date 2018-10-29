cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.11'
  sha256 '18af99447ef1537113b9bc29e46e474429766f46fd8d811165716cbedc9bad4f'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :sierra'

  app 'GNS3.app'
end
