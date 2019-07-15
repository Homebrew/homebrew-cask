cask 'catlight' do
  version '2.28.0'
  sha256 '8fcbd19358bd795f144bfa868ceb5fc1e19be3bce3f3d672cd51adf644a8defc'

  # de2nac35bcll0.cloudfront.net was verified as official when first introduced to the cask
  url "https://de2nac35bcll0.cloudfront.net/dl/mac/beta/CatLightSetup-#{version}.zip"
  appcast 'https://catlight.io/downloads'
  name 'catlight'
  homepage 'https://catlight.io/'

  depends_on macos: '>= :sierra'

  app 'Catlight.app'
end
