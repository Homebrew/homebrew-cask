cask 'gpxsee' do
  version '5.3'
  sha256 '8c6f929faf3458d1c927363d179aed5e3d912599729ba70112b5f1474f349ad7'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X',
          checkpoint: 'ca34e74bb7bb22931a8955f40e29c161db131ba0d5117d16d191597d21b86f90'
  name 'GPXSee'
  homepage 'http://www.gpxsee.org/'

  app 'GPXSee.app'
end
