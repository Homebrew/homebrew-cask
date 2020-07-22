cask 'quip' do
  version '7.15.7'
  sha256 'f0a300bcf384f6f8653136b2537c3d8a41358eacfeaf0205315b0063bad557a5'

  # quip-clients.com/ was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
