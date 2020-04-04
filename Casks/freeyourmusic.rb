cask 'freeyourmusic' do
  version '5.1.1'
  sha256 '9870350585cf8ea71605441488e7c80b12a626a17084b017ce10d014a6bf0871'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast 'https://freeyourmusic.com/'
  name 'FreeYourMusic⁩'
  homepage 'https://freeyourmusic.com/'

  app 'FreeYourMusic.app'
end
