cask 'quip' do
  version '5.1.51'
  sha256 'e8891d44a1e60174ad2b9e51d60b6cb18c6800778d78df9b52b7aa72544b1802'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
