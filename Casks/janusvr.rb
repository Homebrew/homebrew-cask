cask :v1 => 'janusvr' do
  version :latest
  sha256 'aa67202ce3841c78222de71ec2aa3fc450d95a0f8b2a78a843bf404a14476c31'

  # toronto.edu is the official download host per the vendor homepage
  url 'http://www.dgp.toronto.edu/~mccrae/projects/firebox/downloads/janusvr.dmg'
  name 'Janus VR'
  homepage 'http://janusvr.com/'
  license :gratis

  app 'janusvr.app', :target => 'Janus VR.app'
end
