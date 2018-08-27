cask 'stamp' do
  version '4.9.0'
  sha256 'b8812b22564d798133c86a9ca42095ae1e2d567bb8690c7eb81f10a73c2e9c02'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
