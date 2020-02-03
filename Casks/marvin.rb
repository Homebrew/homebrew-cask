cask 'marvin' do
  version '1.50.1'
  sha256 '746f2b9f39c90bcf146cf8bd252089a04f5dff40d6cb48c7884c1365dcdbee0f'

  # amazingmarvin.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
