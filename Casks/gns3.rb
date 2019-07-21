cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.21'
  sha256 '455adf7d65fb4411e1e6481cdbc1a41cd251112dc55cbcdbd983e75045f0c89d'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :sierra'

  app 'GNS3.app'
end
