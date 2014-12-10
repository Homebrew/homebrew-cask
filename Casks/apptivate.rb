cask :v1 => 'apptivate' do
  version :latest
  sha256 :no_check

  url 'http://www.apptivateapp.com/resources/Apptivate.app.zip'
  homepage 'http://www.apptivateapp.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Apptivate.app'
end
