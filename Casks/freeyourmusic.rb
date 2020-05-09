cask 'freeyourmusic' do
  version '5.3.0'
  sha256 '26fb2c5ffc8a84a5985fe69c57613fec57b0b83c91863b9768325ff53fc330c4'

  # dzqeytqqx888.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://stamp-live.s3.amazonaws.com/latest-mac.yml'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
