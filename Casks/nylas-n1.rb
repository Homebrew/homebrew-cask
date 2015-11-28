cask :v1 => 'nylas-n1' do
  version '0.3.25-c174641'
  sha256 '48f77c8b1a0957b4edafe201362658e8798339e29b4b639cc1cd11404daab234'
  
  # amazonaws.com is the official download host per the vendor homepage
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/N1.dmg"
  name 'N1'
  name 'Nylas N1'
  homepage 'https://www.nylas.com/n1'
  license :gpl

  app 'Nylas N1.app'
end
