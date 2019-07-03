cask 'quip' do
  version '5.5.13'
  sha256 'af9aae5cc570be2f2bf39945812e2a864e3499e2a98438914cea45230613aa20'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
