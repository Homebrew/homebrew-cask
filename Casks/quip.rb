cask 'quip' do
  version '5.1.07'
  sha256 'a27d1846790ba75150aa83f8f361bccf6be567a36399a5938993401a1e83cd0b'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
