cask 'gpxsee' do
  version '5.12'
  sha256 '34af58db2c9032bd7da1ad1904bdf174fdd53a87fd7698491f6e2875b6a31399'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X',
          checkpoint: '9c0927e473a477289fe74795e366b5fcbfe0f1421c5f703537462927627c83e0'
  name 'GPXSee'
  homepage 'http://www.gpxsee.org/'

  app 'GPXSee.app'
end
