cask 'quip' do
  version '5.2.91'
  sha256 '454d09b9659bc15e970af45c209c7963b49dd98db65e58ffd7f7680e15d9b87c'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
