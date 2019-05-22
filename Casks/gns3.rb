cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.18'
  sha256 '7ea3e271e3e15651fcdda4e521a546861de3216fe47cc73ce8c82b107c81db56'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :sierra'

  app 'GNS3.app'
end
