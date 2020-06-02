cask 'sameboy' do
  version '0.13'
  sha256 'cb5a524ba1d0d1eed7820a17e02b60650eee7171d305750c8fe1cb6793903a9b'

  # github.com/LIJI32/SameBoy/ was verified as official when first introduced to the cask
  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip"
  appcast 'https://github.com/LIJI32/SameBoy/releases.atom'
  name 'SameBoy'
  homepage 'https://sameboy.github.io/'

  depends_on macos: '>= :sierra'

  app 'SameBoy.app'
end
