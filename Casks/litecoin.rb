class Litecoin < Cask
  version '0.8.7.2'
  sha256 'c5931a4b7b4ca16ba1a7f7f23994f30e47d530f44f70de8a72e24345f04bed2d'

  url "https://download.litecoin.org/litecoin-#{version}/macosx/Litecoin-Qt-#{version}.dmg"
  homepage 'https://litecoin.org/'

  link 'Litecoin-Qt.app'
end
