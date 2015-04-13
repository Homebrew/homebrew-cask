cask :v1 => 'evom' do
  version :latest
  sha256 :no_check

  url 'http://files.thelittleappfactory.com/evom/Evom.zip'
  appcast 'https://files.thelittleappfactory.com/evom/appcast.xml'
  name 'Evom'
  homepage 'http://thelittleappfactory.com/evom/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Evom.app'
end
