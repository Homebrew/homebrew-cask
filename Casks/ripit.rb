cask 'ripit' do
  version '1.6.8'
  sha256 '2631ccd1baea182af28eb319626dd77b0a6fbf36c6df9dde8a1dbe787d94b104'

  url 'https://files.thelittleappfactory.com/ripit/RipIt.zip'
  appcast 'https://files.thelittleappfactory.com/ripit/appcast.xml',
          checkpoint: 'aa863b2bfc1c52d17c857baca0a3b861a2d094dc4e8259aa20f21c4076712cd5'
  name 'RipIt'
  homepage 'http://thelittleappfactory.com/ripit/'
  license :commercial

  auto_updates true

  app 'RipIt.app'
end
