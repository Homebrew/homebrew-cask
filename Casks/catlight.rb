cask 'catlight' do
  version '2.26.3'
  sha256 'caceeee8810ba2d26cecf714a690562c618d5fe31880f3fa5824452f59a7f732'

  # de2nac35bcll0.cloudfront.net was verified as official when first introduced to the cask
  url "https://de2nac35bcll0.cloudfront.net/dl/mac/beta/CatLightSetup-#{version}.zip"
  appcast 'https://catlight.io/downloads'
  name 'catlight'
  homepage 'https://catlight.io/'

  depends_on macos: '>= :sierra'

  app 'Catlight.app'
end
