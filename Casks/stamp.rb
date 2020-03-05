cask 'stamp' do
  version '4.15.5'
  sha256 '7712a1485ed09486c3fba921b032869439baa6d6d23fafb07516ff77c94bc87b'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/STAMP#{version.no_dots}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://freeyourmusic.com/download/',
          configuration: version.no_dots
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
