cask 'gpxsee' do
  version '5.16'
  sha256 'd07ccd90cdc82e3cd23fb44b1ad0e3d5ef343d972cd35a0a783ad3510b0b72d2'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X'
  name 'GPXSee'
  homepage 'http://www.gpxsee.org/'

  app 'GPXSee.app'
end
