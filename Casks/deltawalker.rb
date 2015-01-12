cask :v1 => 'deltawalker' do
  version '2.0.1'
  sha256 'eae3127fb05d84885c91e7ce5da5277aaaf128fd53225d1721d66456719b82fa'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/deltawalker/DeltaWalker-#{version}_64.dmg"
  name 'DeltaWalker'
  homepage 'http://www.deltopia.com/compare-merge-sync/macosx/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DeltaWalker.app'
end
