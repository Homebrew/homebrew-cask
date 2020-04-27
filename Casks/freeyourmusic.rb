cask 'freeyourmusic' do
  version '5.2.0'
  sha256 '4aeece4686144f0a1d5b49112867e64d196c2e9c3aae9d1bb424a0881e974dd2'

  # dzqeytqqx888.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://freeyourmusic.com/'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
