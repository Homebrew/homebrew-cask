cask 'gpxsee' do
  version '7.24'
  sha256 '120e45ef1aad7d6e475ace0c0fc8b8be73bdeeb51ce67824475214b6b65eda24'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X'
  name 'GPXSee'
  homepage 'https://www.gpxsee.org/'

  app 'GPXSee.app'
end
