cask 'kindle-comic-converter' do
  version '5.3'
  sha256 'bf9851d1d376d82b9409c81717910f205351f3394ae031d24fe5eb18f0bf6ee4'

  url "https://kcc.iosphe.re/OSX/KindleComicConverter_osx_#{version}.dmg"
  name 'Kindle Comic Converter'
  homepage 'https://kcc.iosphe.re/'

  app 'Kindle Comic Converter.app'
end
