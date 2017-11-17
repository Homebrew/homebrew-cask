cask 'stamp' do
  version '4.7.8'
  sha256 '999549b26da5cdbc576c06b680fa39964cb16d57aa258216a5450d4962aa1e6c'

  # dzqeytqqx888.cloudfront.net was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://freeyourmusic.com/'

  app 'STAMP.app'
end
