cask 'catlight' do
  version '2.29.2'
  sha256 'e1447f0cd18f6df61c099c981f13010969577bb1522a611a2ae86317a034dde0'

  # de2nac35bcll0.cloudfront.net was verified as official when first introduced to the cask
  url "https://de2nac35bcll0.cloudfront.net/dl/mac/beta/CatLightSetup-#{version}.zip"
  appcast 'https://catlight.io/downloads'
  name 'catlight'
  homepage 'https://catlight.io/'

  depends_on macos: '>= :sierra'

  app 'Catlight.app'
end
