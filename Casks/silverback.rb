cask 'silverback' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://silverback.s3.amazonaws.com/silverback2.zip'
  appcast 'https://silverback.s3.amazonaws.com/release/appcast.xml',
          :checkpoint => '2f7db50cf6ae57471efee04029c98d834d52bcbd21233e034e3ca59bcb0bdcf0'
  name 'Silverback'
  homepage 'http://silverbackapp.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Silverback.app'
end
