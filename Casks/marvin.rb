cask 'marvin' do
  version '1.38.3'
  sha256 '9c51afc62225bc1ffe9a1cedc70f1e13c4777ce9fc6a1980714b551113c02c86'

  # s3.amazonaws.com/amazingmarvin was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/amazingmarvin/Marvin-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
