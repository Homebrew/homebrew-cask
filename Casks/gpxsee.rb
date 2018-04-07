cask 'gpxsee' do
  version '5.5'
  sha256 '49a8426c44bee269a04cab9ac23ff634cdcd562d642d1c36facbed10b530bfe2'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X',
          checkpoint: '7d507ccb5d6a21770d9a823e5f16f99b30071bde835fae98521f639cbe449df6'
  name 'GPXSee'
  homepage 'http://www.gpxsee.org/'

  app 'GPXSee.app'
end
