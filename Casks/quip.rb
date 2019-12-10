cask 'quip' do
  version '7.0.1'
  sha256 'be8ef49be8ee84f0e0eb5aa678418eddbd2e6743f755b502a864a4c1ebe1c400'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
