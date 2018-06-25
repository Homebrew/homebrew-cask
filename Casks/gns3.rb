cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.8'
  sha256 'ad71d17117e93f4806582d9dbf97bb7aee89d515e0a3b2bea37153971ae88199'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
