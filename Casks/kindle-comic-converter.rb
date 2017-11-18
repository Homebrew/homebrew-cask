cask 'kindle-comic-converter' do
  version '5.4.3'
  sha256 '2b4994689c15dbfd5c18bcb099de40d95a1605d30647445f96b3f888b0ef0183'

  url "https://kcc.iosphe.re/OSX/KindleComicConverter_osx_#{version}.dmg"
  name 'Kindle Comic Converter'
  homepage 'https://kcc.iosphe.re/'

  app 'Kindle Comic Converter.app'
end
