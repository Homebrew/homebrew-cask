class Monochrome < Cask
  version '3.3'
  sha256 '2eaec5156ba7f55ac0afa2e9777f0800da756831e4b66a2e9c2c466154177057'

  url "https://dl.dropboxusercontent.com/u/63362/monochrome_#{version.gsub('.', '_')}.zip"
  homepage 'http://lucianmarin.com/monochrome/'

  app 'Monochrome.app'
end
