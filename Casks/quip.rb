cask 'quip' do
  version '4.7.1'
  sha256 '779402a51414bd5d2078debb115440458410a812d06bae0d8fa4a61327b8d920'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'
  license :gratis

  app 'Quip.app'
end
