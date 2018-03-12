cask 'kindle-comic-converter' do
  version '5.4.5'
  sha256 '3247dc452edb0702b3e5a4fa138e15132e04af856902f1ce3e3a3fc58ef9ad34'

  url "https://kcc.iosphe.re/OSX/KindleComicConverter_osx_#{version}.dmg"
  name 'Kindle Comic Converter'
  homepage 'https://kcc.iosphe.re/'

  app 'Kindle Comic Converter.app'
end
