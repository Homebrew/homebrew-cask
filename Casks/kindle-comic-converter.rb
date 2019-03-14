cask 'kindle-comic-converter' do
  version '5.5.1'
  sha256 '4fea22c4db0c7953050e0dedfb97007af1dd30470360e39373e1cadcedc5bcce'

  url "https://kcc.iosphe.re/OSX/KindleComicConverter_osx_#{version}.dmg"
  appcast 'https://github.com/ciromattia/kcc/releases.atom'
  name 'Kindle Comic Converter'
  homepage 'https://kcc.iosphe.re/'

  app 'Kindle Comic Converter.app'
end
