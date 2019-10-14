cask 'quip' do
  version '5.5.47'
  sha256 '12b58d1402b486cc17a16f6714b10e8f96f392cbbadd603d30347e8de387395a'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
