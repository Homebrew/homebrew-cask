cask 'stamp' do
  version '4.8.8'
  sha256 'd11065e9e62dd5db8ccbb3f8fd8451240e17c80c407d87b87eb62fd669d961fb'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
