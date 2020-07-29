cask 'freeyourmusic' do
  version '5.5.0'
  sha256 '7a41022eed755809439d7c9a28b7aa6c9846723c1ca5f2c3ebae4aa775a524f2'

  # dzqeytqqx888.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://stamp-live.s3.amazonaws.com/latest-mac.yml'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
