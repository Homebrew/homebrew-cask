cask :v1 => 'beaker' do
  version '1.4.2-1-ge55c059'
  sha256 '76cbdb1ccafdf5ad10179fa2493e91ab6de16916b366a6c9592a5792ab50bdde'

  # cloudfront.net is the official download host per the vendor homepage
  url "http://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-mac.dmg"
  name 'Beaker'
  homepage 'http://beakernotebook.com/'
  license :apache

  app 'Beaker.app'
end
