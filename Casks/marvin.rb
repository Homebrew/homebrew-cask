cask 'marvin' do
  version '1.48.0'
  sha256 '2364b31d4ad49f95cd773a2d767daf1bcca9fe0ad5f1e25dcebe12e03f6ca866'

  # amazingmarvin.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
