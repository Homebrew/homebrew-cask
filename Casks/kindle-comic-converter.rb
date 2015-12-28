cask 'kindle-comic-converter' do
  version '5.0.1'
  sha256 '48bf8bb6d57972652399d99a89d04aee2fcd3ead31898ea07594ea7db0edfed9'

  url "https://kcc.iosphe.re/OSX/KindleComicConverter_osx_#{version}.dmg"
  name 'Kindle Comic Converter'
  homepage 'https://kcc.iosphe.re'
  license :isc

  app 'Kindle Comic Converter.app'
end
