cask 'marvin' do
  version '1.38.0'
  sha256 '9f15a4faca0b4e01a99a44e26bbbb4db94c6a30da05cd5d8dcdf956781741be8'

  # s3.amazonaws.com/amazingmarvin was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/amazingmarvin/Marvin-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
