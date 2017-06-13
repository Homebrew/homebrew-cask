cask 'kindle-comic-converter' do
  version '5.4'
  sha256 '2c88b10895c75f841895092c567610cc5c48f5b124a2aec1a10b75d5899c048c'

  url "https://kcc.iosphe.re/OSX/KindleComicConverter_osx_#{version}.dmg"
  name 'Kindle Comic Converter'
  homepage 'https://kcc.iosphe.re/'

  app 'Kindle Comic Converter.app'
end
