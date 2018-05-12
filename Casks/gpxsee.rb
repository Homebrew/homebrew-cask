cask 'gpxsee' do
  version '5.10'
  sha256 '425ac4f4f673f6d21d2541e7a59b3a35bde01464643c6642514fbb58628a6a94'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X',
          checkpoint: 'b36987f0d93311f9d8d77354d2ab0634fb3062f9c1ca26913b5f25ddd5d1ed4a'
  name 'GPXSee'
  homepage 'http://www.gpxsee.org/'

  app 'GPXSee.app'
end
