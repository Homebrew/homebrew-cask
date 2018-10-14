cask 'stamp' do
  version '4.10.4'
  sha256 '562a46c3b351d05e7c8d14df9c5899003c91878c6c5a4c827f0926d4eef9d945'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
