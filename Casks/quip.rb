cask 'quip' do
  version '5.5.18'
  sha256 '1475c86676753dc86729aea87b55c456c3a2f40427054f2b31c9c115cd638fb6'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
