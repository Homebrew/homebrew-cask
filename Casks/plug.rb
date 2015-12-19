cask 'plug' do
  version :latest
  sha256 :no_check

  url 'http://www.plugformac.com/updates/plug2/Plug-latest.dmg'
  appcast 'http://www.plugformac.com/updates/plug2/sparklecast.xml'
  name 'Plug'
  homepage 'http://www.plugformac.com/'
  license :gratis

  app 'Plug.app'
end
