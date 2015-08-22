cask :v1 => 'kindlecomicconverter' do
  version '4.6.2'
  sha256 '13d1bb6d19780bc106b82b64b65922b28c412dbbab1c0007320bac9cef3c0ce9'

  url "http://kcc.iosphe.re/OSX/KindleComicConverter_osx_#{version}.zip"
  name 'Kindle Comic Converter'
  homepage 'http://kcc.iosphe.re'
  license :isc

  app 'KindleComicConverter.app'
end
