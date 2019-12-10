cask 'sameboy' do
  version '0.12.2'
  sha256 'ff366d729fe4c18fefa03edd8936f8146075ac3ee5b5a0a71e5d8e8b753a43b3'

  # github.com/LIJI32/SameBoy was verified as official when first introduced to the cask
  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip"
  appcast 'https://github.com/LIJI32/SameBoy/releases.atom'
  name 'SameBoy'
  homepage 'https://sameboy.github.io/'

  depends_on macos: '>= :sierra'

  app 'SameBoy.app'
end
