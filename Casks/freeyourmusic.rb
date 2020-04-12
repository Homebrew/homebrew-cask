cask 'freeyourmusic' do
  version '5.1.4'
  sha256 '330056bcf2be7cd69a6f077d0466d081e5e3b86a6006ddba1a7a96f6f3133ffa'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://freeyourmusic.com/'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
