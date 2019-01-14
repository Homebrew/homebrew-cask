cask 'quip' do
  version '5.4.33'
  sha256 '27d073d47d2d47b9496b6437649ae5cbccd0368d13f7d96c695ca436fc098574'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
