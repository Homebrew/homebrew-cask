cask 'stamp' do
  version '4.14.3'
  sha256 '854b7ce95bf1e2c4aca867bce320edd4a8220e41327fd3735e794d0856d74821'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/STAMP#{version.no_dots}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://freeyourmusic.com/download/',
          configuration: version.no_dots
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
