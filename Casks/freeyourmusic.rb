cask 'freeyourmusic' do
  version '5.4.1'
  sha256 'bbc8bca35e6677dd01866b40735c853890aeec36c16b22f91f142e3d02c3119e'

  # dzqeytqqx888.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://stamp-live.s3.amazonaws.com/latest-mac.yml'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
