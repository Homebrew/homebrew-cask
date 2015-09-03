cask :v1 => 'kindlecomicconverter' do
  version '4.6.3'
  sha256 'e895841842990b4e009d94f2fa125afdae632bfca60953d61b8eb7e167da6bfd'

  url "http://kcc.iosphe.re/OSX/KindleComicConverter_osx_#{version}.zip"
  name 'Kindle Comic Converter'
  homepage 'http://kcc.iosphe.re'
  license :isc

  app 'KindleComicConverter.app'
end
