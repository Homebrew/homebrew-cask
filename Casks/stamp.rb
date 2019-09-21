cask 'stamp' do
  version '4.15.0'
  sha256 'a1d700d6a298dfa31c11cd530e7e703faae390cd3028f1d3a851df46810e3ff2'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/STAMP#{version.no_dots}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://freeyourmusic.com/download/',
          configuration: version.no_dots
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
