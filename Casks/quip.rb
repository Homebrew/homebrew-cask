cask 'quip' do
  version '7.13.3'
  sha256 '0bb1c96e1e7911450ea0f35f202ac86507ab3a2fbce3bf20f5ff798c4ce627c1'

  # quip-clients.com/ was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
