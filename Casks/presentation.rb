cask 'presentation' do
  version '1.2'
  sha256 'e86a395273b880830a8cf699795c76f7ddb49215e8d6004a26d53eb4a55915ff'

  url "http://iihm.imag.fr/blanch/software/osx-presentation/releases/osx-presentation-#{version}.dmg"
  name 'Présentation'
  homepage 'http://iihm.imag.fr/blanch/software/osx-presentation/'
  license :gpl

  app 'Présentation.app'
end
