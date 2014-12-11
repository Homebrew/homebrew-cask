cask :v1 => 'silverback' do
  version :latest
  sha256 :no_check

  url 'https://silverback.s3.amazonaws.com/silverback2.zip'
  appcast 'http://silverback.s3.amazonaws.com/release/appcast.xml'
  homepage 'http://silverbackapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Silverback.app'
end
