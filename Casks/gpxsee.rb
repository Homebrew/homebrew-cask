cask 'gpxsee' do
  version '4.11'
  sha256 '75c08b0356ad8d930e9be5ba9487f6396956144ac4d90e8dad96208df699c21a'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X',
          checkpoint: '6dd35ef7b0d64f4d31a5a8739e1e207c5ad10f080edd0e93f76128d5ce4fec7f'
  name 'GPXSee'
  homepage 'http://www.gpxsee.org/'

  app 'GPXSee.app'
end
