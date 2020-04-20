cask 'gpxsee' do
  version '7.29'
  sha256 '2e8553952193e3b0b3c5b5d625a77cdefb8ec28e0b8072b57eb2b665cb2c5c0e'

  # sourceforge.net/gpxsee/Mac%20OS%20X/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X'
  name 'GPXSee'
  homepage 'https://www.gpxsee.org/'

  app 'GPXSee.app'
end
