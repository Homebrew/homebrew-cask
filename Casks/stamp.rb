cask 'stamp' do
  version '4.8.1'
  sha256 '2630a37e02bf2e9d5d1a61383aa939575f27797f4c021704526739c86484561f'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
