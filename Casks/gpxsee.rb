cask 'gpxsee' do
  version '4.12'
  sha256 'd33b455c8c35f041e2376605313ba73c90b4094dd265b1b5febd936b51588f39'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X',
          checkpoint: '2811012f6096f1c00dbba1eb28dd7d4291866d0a7e45f6c422e97bd52241c11e'
  name 'GPXSee'
  homepage 'http://www.gpxsee.org/'

  app 'GPXSee.app'
end
