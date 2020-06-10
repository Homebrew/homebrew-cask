cask 'sameboy' do
  version '0.13.1'
  sha256 '25988099936a0d0f4b51601e94c0df684a0c835ca65f01054f4c8ff047adbeb9'

  # github.com/LIJI32/SameBoy/ was verified as official when first introduced to the cask
  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip"
  appcast 'https://github.com/LIJI32/SameBoy/releases.atom'
  name 'SameBoy'
  homepage 'https://sameboy.github.io/'

  depends_on macos: '>= :sierra'

  app 'SameBoy.app'
end
