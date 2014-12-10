cask :v1 => 'plug' do
  version :latest
  sha256 :no_check

  url 'http://www.plugformac.com/files/Plug-latest.dmg'
  appcast 'http://www.plugformac.com/files/sparklecast.xml'
  homepage 'http://www.plugformac.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Plug.app'
end
