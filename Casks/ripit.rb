cask 'ripit' do
  version :latest
  sha256 :no_check

  url 'http://files.thelittleappfactory.com/ripit/RipIt.zip'
  appcast 'https://files.thelittleappfactory.com/ripit/appcast.xml',
          :sha256 => 'b2f4306183f5a193000dbfc55e70949e3c7394488264e4dac6c42ee463970b30'
  name 'RipIt'
  homepage 'http://thelittleappfactory.com/ripit/'
  license :commercial

  app 'RipIt.app'
end
