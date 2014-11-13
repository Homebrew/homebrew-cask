class Openlp < Cask
  version '2.0.5'
  sha256 '0ba5a37c359394c277e221f8ca74191d3425cf3cfbd70699d81346c77c93d746'

  url "http://downloads.sourceforge.net/project/openlp/openlp/#{version}/OpenLP-#{version}.dmg"
  homepage 'http://openlp.org'
  license :gpl

  app 'OpenLP.app'
end
