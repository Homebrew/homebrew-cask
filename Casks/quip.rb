cask 'quip' do
  version '4.7.27'
  sha256 '610777d983879f04891201188e3ee47f9da6ff7cd70d534fc955fe0c8e0d24d6'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'
  license :gratis

  app 'Quip.app'
end
