cask 'sonos' do
  version '6.2.2'
  sha256 '5a505fb59645e82a9adff21b5e6231edcb5a5763546a2682b9c49bffe1ed92c3'
  url 'http://www.sonos.com/redir/controller_software_mac'
  name 'Sonos'
  homepage 'http://www.sonos.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sonos.app'
end
