cask :v1 => 'c3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '0.6.8.6120'
  sha256 'ce8f1f18376b0c46bedca4853c5b51c3af973a12c8762522bad48c49a286b5d7'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d2xj26462na9l3.cloudfront.net/c3/C3-#{version}.dmg"
  name 'C3'
  homepage 'http://www.downloadc3.com/'
  license :gratis

  app 'c3.app'
end
