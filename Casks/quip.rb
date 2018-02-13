cask 'quip' do
  version '5.2.26'
  sha256 '811f2681ff98c2bbf9032643f32d4f7877b5e51b4d792b86aaf62bc8482086d9'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
