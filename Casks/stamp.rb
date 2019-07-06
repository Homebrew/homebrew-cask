cask 'stamp' do
  version '4.14.0'
  sha256 '3e3bb8a399be51e29eba6ddd3e1e9eca0af425e3174a83d52c9c93789d75bd33'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
