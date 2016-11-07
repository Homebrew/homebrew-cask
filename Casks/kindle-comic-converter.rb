cask 'kindle-comic-converter' do
  version '5.1.3'
  sha256 '6868a96c17b4629ba808e3829794b81f5fdc401cb2b492951acf2cca285d16a5'

  url "https://kcc.iosphe.re/OSX/KindleComicConverter_osx_#{version}.dmg"
  name 'Kindle Comic Converter'
  homepage 'https://kcc.iosphe.re'

  app 'Kindle Comic Converter.app'
end
