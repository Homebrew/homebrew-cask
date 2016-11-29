cask 'c3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '0.6.8.6120'
  sha256 'ce8f1f18376b0c46bedca4853c5b51c3af973a12c8762522bad48c49a286b5d7'

  # d2xj26462na9l3.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2xj26462na9l3.cloudfront.net/c3/C3-#{version}.dmg"
  name 'C3'
  homepage 'https://www.downloadc3.com/'

  app 'c3.app'
end
