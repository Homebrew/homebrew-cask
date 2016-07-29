cask 'presentation' do
  version '1.6'
  sha256 'ba6beab694d715b67a193338ffb3edca2e0dbfd7c546fcaf08265dbb403d760a'

  url "http://iihm.imag.fr/blanch/software/osx-presentation/releases/osx-presentation-#{version}.dmg"
  name 'Présentation'
  homepage 'http://iihm.imag.fr/blanch/software/osx-presentation/'
  license :gpl

  app 'Présentation.app'
end
