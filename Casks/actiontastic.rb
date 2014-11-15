cask :v1 => 'actiontastic' do
  version 'Beta8'
  sha256 'f6536cd0cb477dd3867ccf359469b7a4377fb307a0307b27566c1f4219b79c44'

  url "https://s3.amazonaws.com/kaboomerang/actiontastic/Actiontastic#{version}.zip"
  homepage 'http://actiontastic.com'
  license :gratis

  app "Actiontastic#{version}/Actiontastic.app"
end
