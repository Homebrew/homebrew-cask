cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.2.11'
  sha256 'b6f64f2f0a6fba1f0961c4800bfbeda84b6c87366f386484b15fe51fcfd3593b'

  # github.com/GNS3/gns3-gui/ was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :high_sierra'

  app 'GNS3.app'
end
