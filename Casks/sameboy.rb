cask 'sameboy' do
  version '0.12'
  sha256 '056b63675bb8c9de5e9f91f151af730ff16f338fb7c6fbd8c3d4f285f29b4dc1'

  # github.com/LIJI32/SameBoy was verified as official when first introduced to the cask
  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip"
  appcast 'https://github.com/LIJI32/SameBoy/releases.atom'
  name 'SameBoy'
  homepage 'https://sameboy.github.io/'

  depends_on macos: '>= :sierra'

  app 'SameBoy.app'
end
