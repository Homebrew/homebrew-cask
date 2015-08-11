cask :v1 => 'apptivate' do
  version :latest
  sha256 :no_check

  url 'http://www.apptivateapp.com/resources/Apptivate.app.zip'
  name 'Apptivate'
  homepage 'http://www.apptivateapp.com'
  license :gratis

  app 'Apptivate.app'
end
