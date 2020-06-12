cask 'sameboy' do
  version '0.13.2'
  sha256 'd379266e1a4ce3243a0e994ce25e6a1e291cdcac5ca8e2544b631cd5c60223b8'

  # github.com/LIJI32/SameBoy/ was verified as official when first introduced to the cask
  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip"
  appcast 'https://github.com/LIJI32/SameBoy/releases.atom'
  name 'SameBoy'
  homepage 'https://sameboy.github.io/'

  depends_on macos: '>= :sierra'

  app 'SameBoy.app'
end
