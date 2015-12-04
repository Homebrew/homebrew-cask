cask :v1 => 'nylas-n1' do
  version '0.3.26-c1ce330'
  sha256 '0e29a5e52f96432b6bacd1573c85c6fd552c8942e1fae281cba034d095f1aedf'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/N1.dmg"
  name 'N1'
  name 'Nylas N1'
  homepage 'https://www.nylas.com/n1'
  license :gpl

  app 'Nylas N1.app'
end
