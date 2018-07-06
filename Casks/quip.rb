cask 'quip' do
  version '5.3.7'
  sha256 'afe59d815546124c9f9b3096320d38bfc187a9f16dcd731dde385a42e3a9190e'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
