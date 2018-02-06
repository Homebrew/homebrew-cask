cask 'quip' do
  version '5.2.21'
  sha256 'ad43113b0ed7f5d84ed56239f53b25b2b253eb5a0e9ef448bc5ebcace8a1baec'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
