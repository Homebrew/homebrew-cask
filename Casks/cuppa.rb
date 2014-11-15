cask :v1 => 'cuppa' do
  version :latest
  sha256 :no_check

  url 'http://www.nathanatos.com/software/downloads/Cuppa.zip'
  appcast 'http://www.nathanatos.com/software/cuppa.xml'
  homepage 'http://www.nathanatos.com/software'
  license :unknown

  app 'Cuppa.app'
end
