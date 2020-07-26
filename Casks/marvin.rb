cask 'marvin' do
  version '1.53.1'
  sha256 'f87b688f3c1b48f9bb0eed4558b4e31860d2c4e7b4dc2e1067ffa012e49762e5'

  # amazingmarvin.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
