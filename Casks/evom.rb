cask 'evom' do
  version :latest
  sha256 :no_check

  url 'https://files.thelittleappfactory.com/evom/Evom.zip'
  appcast 'https://files.thelittleappfactory.com/evom/appcast.xml',
          :checkpoint => '89890cc28e79a3380ce1fb6aa69085f4bbe8de9563edc51358f6c56220624dc8'
  name 'Evom'
  homepage 'http://thelittleappfactory.com/evom/'
  license :gratis

  app 'Evom.app'
end
