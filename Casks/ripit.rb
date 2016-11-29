cask 'ripit' do
  version '1.6.9'
  sha256 '76a3450016db2ba93a4b74271327b19246794813b8ad5916752eb9817c2ad0bc'

  url 'https://files.thelittleappfactory.com/ripit/RipIt.zip'
  appcast 'https://files.thelittleappfactory.com/ripit/appcast.xml',
          checkpoint: '689348dedb5f144b5195071b4ef1c03ba437986a6a1b58bebcb26e7006481979'
  name 'RipIt'
  homepage 'http://thelittleappfactory.com/ripit/'

  auto_updates true

  app 'RipIt.app'
end
