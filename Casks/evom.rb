cask :v1 => 'evom' do
  version :latest
  sha256 :no_check

  url 'http://files.thelittleappfactory.com/evom/Evom.zip'
  appcast 'https://files.thelittleappfactory.com/evom/appcast.xml'
  homepage 'http://thelittleappfactory.com/evom/'
  license :unknown    # todo: improve this machine-generated value

  app 'Evom.app'
end
