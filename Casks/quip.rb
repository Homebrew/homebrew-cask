cask 'quip' do
  version '5.5.9'
  sha256 'b4624a1d15e41125fbd5d74da05065aa5064cb6ef2daf6a5d51f1947ea8b1d0a'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
