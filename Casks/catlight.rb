cask 'catlight' do
  version '2.31.0'
  sha256 'd06c54aed7e0c10f51245a039c64cb26e5006db8b8b0e8bb0a588384bdf04c5e'

  # de2nac35bcll0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://de2nac35bcll0.cloudfront.net/dl/mac/beta/CatLightSetup-#{version}.zip"
  appcast 'https://catlight.io/downloads'
  name 'catlight'
  homepage 'https://catlight.io/'

  depends_on macos: '>= :sierra'

  app 'Catlight.app'
end
