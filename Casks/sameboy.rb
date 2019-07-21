cask 'sameboy' do
  version '0.12.1'
  sha256 'e4c9584ab227a5d07b26ace73cbe6ff369ddc7f16b9b78757834d874c3a5fc2c'

  # github.com/LIJI32/SameBoy was verified as official when first introduced to the cask
  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip"
  appcast 'https://github.com/LIJI32/SameBoy/releases.atom'
  name 'SameBoy'
  homepage 'https://sameboy.github.io/'

  depends_on macos: '>= :sierra'

  app 'SameBoy.app'
end
