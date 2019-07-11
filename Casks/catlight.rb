cask 'catlight' do
  version '2.27.4'
  sha256 '0467c860101ca33d033a31150d74d399eadd5a25432ab30bb66b20fb786a5fcd'

  # de2nac35bcll0.cloudfront.net was verified as official when first introduced to the cask
  url "https://de2nac35bcll0.cloudfront.net/dl/mac/beta/CatLightSetup-#{version}.zip"
  appcast 'https://catlight.io/downloads'
  name 'catlight'
  homepage 'https://catlight.io/'

  depends_on macos: '>= :sierra'

  app 'Catlight.app'
end
