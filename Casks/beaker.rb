cask :v1 => 'beaker' do
  version '1.2.1-0-g7dc8ced'
  sha256 '20dc08ed14bf177f300bb31457faa068898fe4bc1fa6e805f72fc13129804959'

  # cloudfront.net is the official download host per the vendor homepage
  url "http://d299yghl10frh5.cloudfront.net/beaker-notebook-v#{version}-mac.dmg"
  name 'Beaker'
  homepage 'http://beakernotebook.com/'
  license :apache

  app 'Beaker.app'
end
