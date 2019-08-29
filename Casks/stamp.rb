cask 'stamp' do
  version '4.14.1'
  sha256 '6823f38eaf60d7c5594e0bd431ace9d206dac53605b19d62dd8a589f8e20af46'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/STAMP#{version.no_dots}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://freeyourmusic.com/download/',
          configuration: version.no_dots
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
