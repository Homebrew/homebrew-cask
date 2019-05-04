cask 'marvin' do
  version '1.40.0'
  sha256 'd1e22795ad087df0ec4dbb16b000861c9e5f68d449111fcd7b7a1c300e3847d9'

  # s3.amazonaws.com/amazingmarvin was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/amazingmarvin/Marvin-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
