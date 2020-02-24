cask 'stamp' do
  version '4.15.3'
  sha256 'e6243c13e3a35fa50eeecca7066990c4eddd609e0709011d75862e76c9dce3e3'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/STAMP#{version.no_dots}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://freeyourmusic.com/download/',
          configuration: version.no_dots
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
