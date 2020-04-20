cask 'quip' do
  version '7.8.1'
  sha256 '2210f1b393ca5be2d6e8dd6754adc1904060ba2a076ec898082450300a76a4a5'

  # quip-clients.com/ was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
