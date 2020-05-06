cask 'freeyourmusic' do
  version '5.2.1'
  sha256 '0dbfe2a4f77b1b7712a99976f4b9f9d9dc15a3511c750393447780528caa0f8a'

  # dzqeytqqx888.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://stamp-live.s3.amazonaws.com/latest-mac.yml'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
