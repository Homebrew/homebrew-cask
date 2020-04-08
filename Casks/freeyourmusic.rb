cask 'freeyourmusic' do
  version '5.1.2'
  sha256 'b90d7100a91fbe040e3cc00eaec5ba42ee82b698c246bc35d29bc378a5ab6c6c'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://freeyourmusic.com/'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
