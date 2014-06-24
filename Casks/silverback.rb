class Silverback < Cask
  url 'https://silverback.s3.amazonaws.com/silverback2.zip'
  appcast 'http://silverback.s3.amazonaws.com/release/appcast.xml'
  homepage 'http://silverbackapp.com/'
  version 'latest'
  sha256 :no_check
  link 'Silverback.app'
end
