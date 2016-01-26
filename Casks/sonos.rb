cask 'sonos' do
  version :latest
  sha256 :no_check

  url 'http://www.sonos.com/redir/controller_software_mac'
  name 'Sonos'
  homepage 'http://www.sonos.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sonos.app'
end
