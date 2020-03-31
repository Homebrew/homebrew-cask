cask 'freeyourmusic' do
  version '5.0.9'
  sha256 'f59d7e876821a0bb87b1319fbab68136ac10dfa4cb71f0a5947c86cf601e2acc'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://freeyourmusic.com/'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
