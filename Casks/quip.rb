cask 'quip' do
  version '7.9.0'
  sha256 '49cc729c8d24d20f8eaefed9109cde2d0b3fa69f037de47cbbf5955a2e499e5a'

  # quip-clients.com/ was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
