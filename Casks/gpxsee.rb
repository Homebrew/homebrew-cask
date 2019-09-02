cask 'gpxsee' do
  version '7.12'
  sha256 '03b2db5fb4972d3816ceeee5d034fd938ef231cb690c207bae216d4d2c7bd1a4'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X'
  name 'GPXSee'
  homepage 'https://www.gpxsee.org/'

  app 'GPXSee.app'
end
