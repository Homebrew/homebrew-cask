cask :v1 => 'janusvr' do
  version :latest
  sha256 ''

  # toronto.edu is the official download host per the vendor homepage
  url 'http://www.dgp.toronto.edu/~mccrae/projects/firebox/downloads/janusvr.dmg'
  name 'Janus VR'
  homepage 'http://janusvr.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app ''
end
