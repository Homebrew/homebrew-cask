cask 'kindle-comic-converter' do
  version '5.2.1'
  sha256 '9c9b84b515d93ec83d39f247f0036f3bebe2838e277df4e4ff4e3d904288df8d'

  url "https://kcc.iosphe.re/OSX/KindleComicConverter_osx_#{version}.dmg"
  name 'Kindle Comic Converter'
  homepage 'https://kcc.iosphe.re/'

  app 'Kindle Comic Converter.app'
end
