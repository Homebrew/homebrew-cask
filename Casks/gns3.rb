cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '1.5.4'
  sha256 '2e6b2c827379f2bdbd485e68fda06bfb3b502bd4079a495f6060fc9e6a831a2b'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: 'e10d050daff599b9e04ccc13bde4f0fba4dca92a1779896263141ce1c3229784'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
