cask 'gpxsee' do
  version '5.13-1'
  sha256 '68eb5a04ce29b6d0c9af2380a26cbd5fa5b44020cf4a3a9cd26643b91c869240'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X',
          checkpoint: '5fce1d62582c69b3df03c3bd8f711869e93a9e1b218b4f1c950d2d69ab664387'
  name 'GPXSee'
  homepage 'http://www.gpxsee.org/'

  app 'GPXSee.app'
end
