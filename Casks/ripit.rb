cask 'ripit' do
  version :latest
  sha256 :no_check

  url 'https://files.thelittleappfactory.com/ripit/RipIt.zip'
  appcast 'https://files.thelittleappfactory.com/ripit/appcast.xml',
          :sha256 => 'f2f0bf51620b592b296ecfdb898eb6effa64af9d3ace8b5db9b66bc137b35571'
  name 'RipIt'
  homepage 'http://thelittleappfactory.com/ripit/'
  license :commercial

  app 'RipIt.app'
end
