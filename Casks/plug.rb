cask :v1 => 'plug' do
  version :latest
  sha256 :no_check

  url 'http://www.plugformac.com/files/Plug-latest.dmg'
  appcast 'http://www.plugformac.com/files/sparklecast.xml'
  name 'Plug'
  homepage 'http://www.plugformac.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Plug.app'
end
