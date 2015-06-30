cask :v1 => 'beaker' do
  version '1.3.1-1-g3072e5e'
  sha256 'd7b9e1182123da9ada6a96295843282c09285acfeb7413e5fb6d93d223bc3c5b'

  # cloudfront.net is the official download host per the vendor homepage
  url "http://d299yghl10frh5.cloudfront.net/beaker-notebook-v#{version}-mac.dmg"
  name 'Beaker'
  homepage 'http://beakernotebook.com/'
  license :apache

  app 'Beaker.app'
end
