cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.2.10'
  sha256 'a17cb4fcd97ba49f11bcf6609d25907730da0b6f40cc0fc1bde704b04bfe51ee'

  # github.com/GNS3/gns3-gui/ was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  depends_on macos: '>= :high_sierra'

  app 'GNS3.app'
end
