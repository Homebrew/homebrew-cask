cask 'quip' do
  version '5.5.25'
  sha256 '4e1def44f8ffc2fb04c523d9436bb886ecfe02973875193bed076916cf7764f0'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
