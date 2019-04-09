cask 'quip' do
  version '5.4.73'
  sha256 'f33b65879e6bca659252f8e0a6ef3188f0e5a34890af7d16b7d3f332dca5fcbf'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
