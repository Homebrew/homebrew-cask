cask 'quip' do
  version '7.7.1'
  sha256 'fdbe8e81f003e1778de3f660fe6a7f208cd093688b749d21d9f81c04d729eeaa'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
