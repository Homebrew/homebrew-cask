cask 'freeyourmusic' do
  version '5.1.0'
  sha256 '6b0add85aa5f60deda22e9e8bcafaaf71172bb77f8a6ed86ad809da7a46f8e80'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://freeyourmusic.com/'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
