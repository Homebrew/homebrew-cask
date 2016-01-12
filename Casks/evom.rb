cask 'evom' do
  version :latest
  sha256 :no_check

  url 'https://files.thelittleappfactory.com/evom/Evom.zip'
  appcast 'https://files.thelittleappfactory.com/evom/appcast.xml',
          :sha256 => '835e7059cd2bec30e3e3330fe2931fa8095392e063b7a5c9d497a2351e1abb49'
  name 'Evom'
  homepage 'http://thelittleappfactory.com/evom/'
  license :gratis

  app 'Evom.app'
end
