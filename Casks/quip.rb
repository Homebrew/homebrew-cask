cask 'quip' do
  version '5.2.39'
  sha256 '561a2bcec79436ee5223f4c6cfac7ec929a7ae9889d2b6d5703974aa9a166961'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
