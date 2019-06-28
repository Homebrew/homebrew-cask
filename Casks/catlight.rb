cask 'catlight' do
  version '2.26.2'
  sha256 '2412e4fd47f4509a1b1068f8d1ac697368411ad1ec3b0b86e5d75bd9347aa5bc'

  # de2nac35bcll0.cloudfront.net was verified as official when first introduced to the cask
  url "https://de2nac35bcll0.cloudfront.net/dl/mac/beta/CatLightSetup-#{version}.zip"
  appcast 'https://catlight.io/downloads'
  name 'catlight'
  homepage 'https://catlight.io/'

  depends_on macos: '>= :sierra'

  app 'Catlight.app'
end
