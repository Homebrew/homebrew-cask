cask 'freeyourmusic' do
  version '5.5.2'
  sha256 'e910243934e4e51262a81e61354ed337a38a5d5c0324d629b1a9c0699ee1d60f'

  # dzqeytqqx888.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://stamp-live.s3.amazonaws.com/latest-mac.yml'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
