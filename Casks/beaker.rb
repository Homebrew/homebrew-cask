cask :v1 => 'beaker' do
  version '1.3.4-4-g37d7759'
  sha256 '4bdb869ee4326098b6fbc2552b00b3308985a2b4eadf8ec37b68f2fa17ebad25'

  # cloudfront.net is the official download host per the vendor homepage
  url "http://d299yghl10frh5.cloudfront.net/beaker-notebook-v#{version}-mac.dmg"
  name 'Beaker'
  homepage 'http://beakernotebook.com/'
  license :apache

  app 'Beaker.app'
end
