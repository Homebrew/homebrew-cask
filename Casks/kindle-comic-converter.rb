cask 'kindle-comic-converter' do
  version '5.1.2'
  sha256 '9390f37ee646ce123b98df2b45117511848e0ee6dfd9522e35760058f59ddce4'

  url "https://kcc.iosphe.re/OSX/KindleComicConverter_osx_#{version}.dmg"
  name 'Kindle Comic Converter'
  homepage 'https://kcc.iosphe.re'
  license :isc

  app 'Kindle Comic Converter.app'
end
