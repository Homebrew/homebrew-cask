cask :v1 => 'apptivate' do
  version :latest
  sha256 :no_check

  url 'http://www.apptivateapp.com/resources/Apptivate.app.zip'
  homepage 'http://www.apptivateapp.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Apptivate.app'
end
