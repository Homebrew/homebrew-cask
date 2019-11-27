cask 'catlight' do
  version '2.29.0'
  sha256 '65dfb967d3d76c92975d90967deedb4405fdce7f131ec289154d4fcf293ff94e'

  # de2nac35bcll0.cloudfront.net was verified as official when first introduced to the cask
  url "https://de2nac35bcll0.cloudfront.net/dl/mac/beta/CatLightSetup-#{version}.zip"
  appcast 'https://catlight.io/downloads'
  name 'catlight'
  homepage 'https://catlight.io/'

  depends_on macos: '>= :sierra'

  app 'Catlight.app'
end
