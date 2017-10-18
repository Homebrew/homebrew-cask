cask 'gpxsee' do
  version '4.14'
  sha256 '7271ec6cdfc75bcc60b549194086020d4dcd2fdeab660f04b1015d3377da72a1'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X',
          checkpoint: '89dadc1e4e6c4d5b3c9aef284b03bc2af1222c984da1de5a6b05d786a528e2bd'
  name 'GPXSee'
  homepage 'http://www.gpxsee.org/'

  app 'GPXSee.app'
end
