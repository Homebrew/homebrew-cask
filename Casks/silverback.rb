cask :v1 => 'silverback' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://silverback.s3.amazonaws.com/silverback2.zip'
  appcast 'https://silverback.s3.amazonaws.com/release/appcast.xml'
  name 'Silverback'
  homepage 'http://silverbackapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Silverback.app'
end
