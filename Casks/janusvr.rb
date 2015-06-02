cask :v1 => 'janusvr' do
  version :latest
  sha256 :no_check

  # toronto.edu is the official download host per the vendor homepage
  url 'http://www.dgp.toronto.edu/~mccrae/projects/firebox/downloads/janusvr.dmg'
  name 'Janus VR'
  homepage 'http://janusvr.com/'
  license :gratis

  app 'janusvr.app'
end
