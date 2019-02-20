cask 'quip' do
  version '5.4.47'
  sha256 '74a8a1ddbd8d022e348742aa9b006ea26a0a2412e726c662c6c7ac8d8c6acfd9'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
