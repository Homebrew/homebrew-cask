cask :v1 => 'cuppa' do
  version :latest
  sha256 :no_check

  url 'http://www.nathanatos.com/software/downloads/Cuppa.zip'
  appcast 'http://www.nathanatos.com/software/cuppa.xml'
  homepage 'http://www.nathanatos.com/software'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Cuppa.app'
end
