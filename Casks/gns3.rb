cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.5'
  sha256 'cc1e56de0efe417670ff9ef4eaebd53732ded97c70863b56ca851c5ce1cb1aa3'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: '9132a534d462a23c0c6b11ed8e7497c7837993969925eb5d40159667f4b5bf9a'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
