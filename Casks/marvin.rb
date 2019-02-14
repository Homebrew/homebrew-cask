cask 'marvin' do
  version '1.37.3'
  sha256 '9ea8cf038948d157beaa74ccb7920942385c018d1ab9b6b91d210531706675ff'

  # amazingmarvin.s3-website-us-east-1.amazonaws.com was verified as official when first introduced to the cask
  url 'http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  appcast 'https://www.corecode.io/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
