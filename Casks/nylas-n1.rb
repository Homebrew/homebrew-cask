cask 'nylas-n1' do
  version '0.3.27-1c2a936'
  sha256 '7b07783c61682cdff80b2cb9c395660f8944d77e24f80cc395ecf71cd4b6d2e2'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/N1.dmg"
  name 'N1'
  name 'Nylas N1'
  homepage 'https://www.nylas.com/n1'
  license :gpl

  app 'Nylas N1.app'
end
