cask 'gpxsee' do
  version '4.16'
  sha256 '62e6955e7a7189edaab8e23bb98e590aa7331f2eb72aa08873e2861840e478eb'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X',
          checkpoint: '74d489cb204aaa1a501ee4ac8884ce97c7c703c4a9874ffc7ced481b4eec4909'
  name 'GPXSee'
  homepage 'http://www.gpxsee.org/'

  app 'GPXSee.app'
end
