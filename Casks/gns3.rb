cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.17'
  sha256 'e3429a4ee5efddf690b98473af99d25e859e4a284567487304aa7a3ed00d0167'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :sierra'

  app 'GNS3.app'
end
