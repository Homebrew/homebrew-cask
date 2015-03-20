cask :v1 => 'contexts' do
  version :latest
  sha256 :no_check

  url 'http://contexts.co/releases/Contexts.zip'
  appcast 'http://www.contexts.co/releases/appcast.xml'
  name 'Contexts'
  homepage 'http://contexts.co/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Contexts.app'
end
