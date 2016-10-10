cask 'evom' do
  version '1.0.2'
  sha256 '5ac95d871f2cbe5918bb7a353161a0b58449b3680ea0dc69e2bd704c1ac05039'

  url 'https://files.thelittleappfactory.com/evom/Evom.zip'
  appcast 'https://files.thelittleappfactory.com/evom/appcast.xml',
          checkpoint: '89890cc28e79a3380ce1fb6aa69085f4bbe8de9563edc51358f6c56220624dc8'
  name 'Evom'
  homepage 'http://thelittleappfactory.com/evom/'

  app 'Evom.app'
end
