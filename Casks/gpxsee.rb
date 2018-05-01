cask 'gpxsee' do
  version '5.9'
  sha256 '855cf2616f6586b1d2f4160cb3cea8902735c6a65aa6744e9344d83699565a30'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X',
          checkpoint: 'db69ab01442930ea8a76bb8228a8953431f556e86d48232df945aecaa2dbe3f5'
  name 'GPXSee'
  homepage 'http://www.gpxsee.org/'

  app 'GPXSee.app'
end
