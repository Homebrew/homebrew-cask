cask 'freeyourmusic' do
  version '5.0.1'
  sha256 '99d96818b32603152f56583b740b0fcc6ea70d4a1f7ac9b50dd10bf1e602ad94'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://freeyourmusic.com/'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
