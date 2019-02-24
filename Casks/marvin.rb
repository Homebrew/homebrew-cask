cask 'marvin' do
  version '1.37.4'
  sha256 'fce9293100fceacabc700e74cac4c6627074f796acf9b716962f16c0ac4b7ff6'

  # amazingmarvin.s3-website-us-east-1.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/amazingmarvin/Marvin-#{version}.dmg"
  appcast 'https://www.corecode.io/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
