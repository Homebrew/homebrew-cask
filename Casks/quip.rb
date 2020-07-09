cask 'quip' do
  version '7.14.2'
  sha256 '8113caa2f8ee5ff23f20c8dff6fade917728966dfa5162b4b6b11c28d98ab34a'

  # quip-clients.com/ was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
