cask :v1 => 'c3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '0.5.2.2143'
  sha256 '1f039168caf6487c4ded7fdec5ebf80f4400b03188a40b1bc06f0abc8bf3d3ff'

  url "https://d2xj26462na9l3.cloudfront.net/c3/C3-FNF-#{version}.dmg"
  name 'C3'
  homepage 'http://www.downloadc3.com/'
  license :gratis

  app 'c3.app'
end
