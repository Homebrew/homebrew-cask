cask 'quip' do
  version '7.1.2'
  sha256 '6d77abc8651d5e7783c289482bbf0c7780f5e72c866268214c9ead08a5d9d14b'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
