cask :v1 => 'silverback' do
  version :latest
  sha256 :no_check

  url 'https://silverback.s3.amazonaws.com/silverback2.zip'
  appcast 'http://silverback.s3.amazonaws.com/release/appcast.xml'
  homepage 'http://silverbackapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Silverback.app'
end
