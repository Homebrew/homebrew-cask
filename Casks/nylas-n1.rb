cask 'nylas-n1' do
  version '0.3.43-b95f1f7'
  sha256 '2b8bc0835e6b992e77dad5942f902110666d9c1a5c103b7f4d59feb05d3b78ab'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/N1.dmg"
  name 'Nylas N1'
  homepage 'https://www.nylas.com/n1'
  license :gpl

  app 'Nylas N1.app'
end
