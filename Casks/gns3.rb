cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.19'
  sha256 '16a5b370039a594f1b36952b7d78b997b460236bb69e355f6bf45c498dc018a9'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :sierra'

  app 'GNS3.app'
end
