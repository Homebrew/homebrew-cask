cask 'gpxsee' do
  version '4.9'
  sha256 '60bd08e8d1097ecc6d61cda58ba0b0ef8ccae1154366ddc9a91446596b3922f8'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X',
          checkpoint: 'a3f47ed0f7fe4eb7781b0259c5c38efa39775bf0f21e9a4948b1ebdbc44e8053'
  name 'GPXSee'
  homepage 'http://www.gpxsee.org/'

  app 'GPXSee.app'
end
