cask :v1 => 'beaker' do
  version '1.0'
  sha256 '52218c170816587eb1264b80b4bbdd6a2eb5c5f074fba89afc7aa0e591fa838a'

  url "http://d299yghl10frh5.cloudfront.net/beaker-notebook-v#{version}-0-g5644b78-mac.dmg"
  homepage 'http://beakernotebook.com/'
  license :apache

  app 'Beaker.app'
end
