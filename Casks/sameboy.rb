cask 'sameboy' do
  version '0.12.3'
  sha256 '9de462c00fc89b3c7a498aaadfa6c3a3a5beb698bfd307159f4960ad84dc1623'

  # github.com/LIJI32/SameBoy was verified as official when first introduced to the cask
  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip"
  appcast 'https://github.com/LIJI32/SameBoy/releases.atom'
  name 'SameBoy'
  homepage 'https://sameboy.github.io/'

  depends_on macos: '>= :sierra'

  app 'SameBoy.app'
end
