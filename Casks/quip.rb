cask 'quip' do
  version '5.4.57'
  sha256 'e12c12a98001cf9f29cdaaa3684d87b5bb321c577074aaf5a336e7037ec5d559'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
