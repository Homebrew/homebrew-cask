cask 'marvin' do
  version '1.43.0'
  sha256 'ae4ff4b798c50dc5de35eb69d32a51ba49bb391c6bb5826775e1ecb5aafec333'

  # amazingmarvin.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
