cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.2.6'
  sha256 '7d5ab5c18aa148163fd3fca2d6b334a272251cde0704c07ee328e7c47488dd34'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :high_sierra'

  app 'GNS3.app'
end
