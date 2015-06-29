cask :v1 => 'deltawalker' do
  version '2.1.1'
  sha256 '1ddc599279f428dd9296f78fdb05e0a39faf9f97fa71ad5e02c22010380a01ae'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/deltawalker/DeltaWalker-#{version}_64.dmg"
  name 'DeltaWalker'
  homepage 'https://www.deltopia.com/compare-merge-sync/macosx/'
  license :commercial

  app 'DeltaWalker.app'
end
