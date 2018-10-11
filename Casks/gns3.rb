cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.9'
  sha256 'a1568f5fe45caeb106717a7e6f018826bcd9493f3cda800f3eb72e32fb96b12b'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
