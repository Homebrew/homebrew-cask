cask 'gpxsee' do
  version '5.6'
  sha256 '5337289c8bf3a908ddcc973e058225e1f859160284ec8342253e720a5bc2ffea'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X',
          checkpoint: '0c5a509334a7859876e56d40e809283f39b09716ff83694f8e8512b00382ed62'
  name 'GPXSee'
  homepage 'http://www.gpxsee.org/'

  app 'GPXSee.app'
end
