cask 'catlight' do
  version '2.29.1'
  sha256 '28355ddf7fd1a3dd879162ef7da123b6450617d6c40427df0e4279bc327cec55'

  # de2nac35bcll0.cloudfront.net was verified as official when first introduced to the cask
  url "https://de2nac35bcll0.cloudfront.net/dl/mac/beta/CatLightSetup-#{version}.zip"
  appcast 'https://catlight.io/downloads'
  name 'catlight'
  homepage 'https://catlight.io/'

  depends_on macos: '>= :sierra'

  app 'Catlight.app'
end
