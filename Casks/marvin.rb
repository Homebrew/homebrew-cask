cask 'marvin' do
  version '1.45.1'
  sha256 '501bbf1f9810183ec35be50386c4d88f1e4fc2bbe029f84c13c18cc8e16e7c14'

  # amazingmarvin.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
