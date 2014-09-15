class Silverback < Cask
  version 'latest'
  sha256 :no_check

  url 'https://silverback.s3.amazonaws.com/silverback2.zip'
  appcast 'http://silverback.s3.amazonaws.com/release/appcast.xml'
  homepage 'http://silverbackapp.com/'

  app 'Silverback.app'
end
