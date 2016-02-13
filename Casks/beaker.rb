cask 'beaker' do
  version '1.4.2-1-ge55c059'
  sha256 '76cbdb1ccafdf5ad10179fa2493e91ab6de16916b366a6c9592a5792ab50bdde'

  # d299yghl10frh5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-mac.dmg"
  name 'Beaker'
  homepage 'http://beakernotebook.com/'
  license :apache

  app 'Beaker.app'
end
