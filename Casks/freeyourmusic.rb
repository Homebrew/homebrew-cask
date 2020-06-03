cask 'freeyourmusic' do
  version '5.4.3'
  sha256 '1d660303c7d230fe5336c7f1baa4ad8428c600a6fea3d984f9afa0e6137791a7'

  # dzqeytqqx888.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://stamp-live.s3.amazonaws.com/latest-mac.yml'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
