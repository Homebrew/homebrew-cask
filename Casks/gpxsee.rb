cask 'gpxsee' do
  version '7.20'
  sha256 'd12ffb21eefb6f43c63fb0cd473d3f1ad7af8a38d068b534b6cbfd202de610a0'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X'
  name 'GPXSee'
  homepage 'https://www.gpxsee.org/'

  app 'GPXSee.app'
end
