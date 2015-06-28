cask :v1 => 'beaker' do
  version '1.3-0-g7f23794'
  sha256 'af63a4862232ca64f5810c58c5981e079ab8f57029180c4c94a3aabb9f634f2a'

  # cloudfront.net is the official download host per the vendor homepage
  url "http://d299yghl10frh5.cloudfront.net/beaker-notebook-v#{version}-mac.dmg"
  name 'Beaker'
  homepage 'http://beakernotebook.com/'
  license :apache

  app 'Beaker.app'
end
