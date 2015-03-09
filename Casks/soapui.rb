cask :v1 => 'soapui' do
  version :latest
  sha256 :no_check

  url 'http://sourceforge.net/projects/soapui/files/latest/download?source=files'
  name 'SoapUI'
  homepage 'http://www.soapui.org'
  license :unknown

  app 'SoapUI-5.0.0.app'
end
