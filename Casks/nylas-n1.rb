cask 'nylas-n1' do
  version '0.3.45-3b5880e'
  sha256 '529b423bc0eb96a1723bb9fde73c708ebb11e568446e95ddaa8589996529eef9'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/N1.dmg"
  name 'Nylas N1'
  homepage 'https://www.nylas.com/n1'
  license :gpl

  app 'Nylas N1.app'
end
