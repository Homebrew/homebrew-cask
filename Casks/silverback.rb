cask 'silverback' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://silverback.s3.amazonaws.com/silverback2.zip'
  appcast 'https://silverback.s3.amazonaws.com/release/appcast.xml',
          :checkpoint => '87e80a6c66ebfc9ea8a683136686b4a80e45dc38d7dced8db4c4028bc59be0ba'
  name 'Silverback'
  homepage 'http://silverbackapp.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Silverback.app'
end
