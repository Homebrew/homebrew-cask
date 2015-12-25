cask 'evom' do
  version :latest
  sha256 :no_check

  url 'http://files.thelittleappfactory.com/evom/Evom.zip'
  appcast 'https://files.thelittleappfactory.com/evom/appcast.xml',
          :sha256 => 'ed7a09825022f8643d2ca67c0deccb727a45b95306b83bf5b3ea8df989195991'
  name 'Evom'
  homepage 'http://thelittleappfactory.com/evom/'
  license :gratis

  app 'Evom.app'
end
