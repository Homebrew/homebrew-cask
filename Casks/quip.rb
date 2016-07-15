cask 'quip' do
  version '4.7.10'
  sha256 'b2a486962635a09c026dcec246bc49da9d79c72c5b264749a2367ed737b2c880'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'
  license :gratis

  app 'Quip.app'
end
