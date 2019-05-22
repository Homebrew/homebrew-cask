cask 'quip' do
  version '5.4.84'
  sha256 '47a605166429b63955b8a9134be2447a9488b4df0bccebb71c557f5e5dbaf16b'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
