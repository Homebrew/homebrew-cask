cask :v1 => 'contexts' do
  version :latest
  sha256 :no_check

  url 'http://contextsformac.com/releases/Contexts.zip'
  appcast 'http://www.contextsformac.com/releases/appcast.xml'
  name 'Contexts'
  homepage 'http://contextsformac.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Contexts.app'
end
