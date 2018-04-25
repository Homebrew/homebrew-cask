cask 'quip' do
  version '5.2.62'
  sha256 '7ef0530f2023a099780dc1ba14f59522839921dc7ecb09fdcf7595d9b0047f67'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
