cask :v1 => 'beaker' do
  version '1.3.3-0-g770609a'
  sha256 '740e779069a42f62db22a0da7d3167fe1369c6b606c596f8bfe084fb0c1ddea1'

  # cloudfront.net is the official download host per the vendor homepage
  url "http://d299yghl10frh5.cloudfront.net/beaker-notebook-v#{version}-mac.dmg"
  name 'Beaker'
  homepage 'http://beakernotebook.com/'
  license :apache

  app 'Beaker.app'
end
