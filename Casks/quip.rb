cask 'quip' do
  version '7.5.1'
  sha256 'ee0bb6d257b1808b4b342370813855cfa3c4dddf7b5f9de6e82f6869d37d3499'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
