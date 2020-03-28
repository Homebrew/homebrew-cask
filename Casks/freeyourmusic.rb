cask 'freeyourmusic' do
  version '5.0.5'
  sha256 'b461f2b6fc10003cc38810dcb828cee925036a4864be2fb74b0074514729ec4f'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://freeyourmusic.com/'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
