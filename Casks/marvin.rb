cask 'marvin' do
  version '1.49.1'
  sha256 '81a232646d89e8e052173caba56a052d5bc7a34f0c839b490b3dc579d1c077c8'

  # amazingmarvin.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
