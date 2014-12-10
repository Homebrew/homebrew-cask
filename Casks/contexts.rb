cask :v1 => 'contexts' do
  version :latest
  sha256 :no_check

  url 'http://contextsformac.com/releases/Contexts.zip'
  appcast 'http://www.contextsformac.com/releases/appcast.xml'
  homepage 'http://contextsformac.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Contexts.app'
end
