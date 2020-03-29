cask 'freeyourmusic' do
  version '5.0.6'
  sha256 'c506d6d003c78f84506d122da5c84f8f9a7925f1ca19f00a004da8d307414233'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://freeyourmusic.com/'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
