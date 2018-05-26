cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.6'
  sha256 '5d62cd2cef9b7117efb0f81aab1ea6f1001d4654599a53bf7874fb56eb7330b0'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: 'ce4428ec7e0f931072e37a21eb78150a3963b897443f64cddb4925bd6c0a0cf5'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
