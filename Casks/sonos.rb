cask 'sonos' do
  version :latest
  sha256 :no_check

  url 'http://www.sonos.com/redir/controller_software_mac'
  name 'Sonos'
  homepage 'https://www.sonos.com/'
  license :commercial

  app 'Sonos.app'
end
