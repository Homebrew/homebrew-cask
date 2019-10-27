cask 'quip' do
  version '5.5.49'
  sha256 '5a8081ff25b2775995f8d248f2f8ba8df0f2212f8dfd1b22483b58667c5a17c2'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
