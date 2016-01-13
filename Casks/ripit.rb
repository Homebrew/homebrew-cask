cask 'ripit' do
  version :latest
  sha256 :no_check

  url 'https://files.thelittleappfactory.com/ripit/RipIt.zip'
  appcast 'https://files.thelittleappfactory.com/ripit/appcast.xml',
          :checkpoint => 'aa863b2bfc1c52d17c857baca0a3b861a2d094dc4e8259aa20f21c4076712cd5'
  name 'RipIt'
  homepage 'http://thelittleappfactory.com/ripit/'
  license :commercial

  app 'RipIt.app'
end
