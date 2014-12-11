cask :v1 => 'deltawalker' do
  version '2.0.1'
  sha256 'eae3127fb05d84885c91e7ce5da5277aaaf128fd53225d1721d66456719b82fa'

  url "https://s3.amazonaws.com/deltawalker/DeltaWalker-#{version}_64.dmg"
  homepage 'http://www.deltopia.com/compare-merge-sync/macosx/'
  license :unknown    # todo: improve this machine-generated value

  app 'DeltaWalker.app'
end
