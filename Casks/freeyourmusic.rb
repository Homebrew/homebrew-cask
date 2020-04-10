cask 'freeyourmusic' do
  version '5.1.3'
  sha256 '66f6078a1a338d35d840bfe1307de331af72a33e30cb92dcf89020b88bc16226'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://freeyourmusic.com/'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
