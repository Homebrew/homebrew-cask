cask 'quip' do
  version '5.1.58'
  sha256 '4946b7e4ab70eca7e646b38bc3efa58b5d3d8e99f35fbd64249fb54b384677e0'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
