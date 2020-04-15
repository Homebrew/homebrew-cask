cask 'freeyourmusic' do
  version '5.1.5'
  sha256 'c7f96d1063061a850aba4eb2d8d5887e6f17cee8d379bb70a3fcf697c15c9aff'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://freeyourmusic.com/'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
