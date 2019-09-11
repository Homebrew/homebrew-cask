cask 'quip' do
  version '5.5.33'
  sha256 '25cf483cc40325e04d924d16b2939b390a55b3e1d48aacec51566daca40827c9'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
