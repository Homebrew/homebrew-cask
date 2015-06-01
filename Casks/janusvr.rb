cask :v1 => 'janusvr' do
  version :latest
  sha256 :no_check

  url 'http://www.dgp.toronto.edu/~mccrae/projects/firebox/downloads/janusvr.dmg'
  name 'Janus VR'
  homepage 'http://janusvr.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'janusvr.app'
end
