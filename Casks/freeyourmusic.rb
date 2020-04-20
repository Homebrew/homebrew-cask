cask 'freeyourmusic' do
  version '5.1.6'
  sha256 '2c7878f9a34af43678206d6569b9a5cb1de7f08b17ccbb0c98cdf308f63a218a'

  # dzqeytqqx888.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://freeyourmusic.com/'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
