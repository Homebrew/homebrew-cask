cask 'catlight' do
  version '2.30.0'
  sha256 '7a514b392b2d1e4c12717c5a981eb5e8a10ae53acb29b74a4d5a43f3318b4065'

  # de2nac35bcll0.cloudfront.net was verified as official when first introduced to the cask
  url "https://de2nac35bcll0.cloudfront.net/dl/mac/beta/CatLightSetup-#{version}.zip"
  appcast 'https://catlight.io/downloads'
  name 'catlight'
  homepage 'https://catlight.io/'

  depends_on macos: '>= :sierra'

  app 'Catlight.app'
end
