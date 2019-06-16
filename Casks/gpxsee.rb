cask 'gpxsee' do
  version '7.9'
  sha256 '210def1d17abcbb3fbd8fdee05d635178465c4c9e0f44164ce4fcd09fbf86801'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X'
  name 'GPXSee'
  homepage 'https://www.gpxsee.org/'

  app 'GPXSee.app'
end
