cask 'marvin' do
  version '1.51.1'
  sha256 '80b5d001ebc8b1f77eb7da47b867dfc77c144785962f6df784839a0694f0d863'

  # amazingmarvin.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
