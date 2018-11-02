cask 'stamp' do
  version '4.10.5'
  sha256 '9c4076b50cd1bc3593d0351600a95ef9d3c0008eb6e8e698c67ff360b534ffaa'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
