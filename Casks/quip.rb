cask 'quip' do
  version '7.3.1'
  sha256 '69e7fadd9b1fe6e2a923014ff561dded8e0adc1cbd95cdafc4f40793cfbfeccd'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
