cask 'presentation' do
  version '1.7'
  sha256 'ca13a2176a0d23f425c61c5d9172c160c4a0373b0080ca5d6b5e61355b31bb81'

  url "http://iihm.imag.fr/blanch/software/osx-presentation/releases/osx-presentation-#{version}.dmg"
  appcast 'http://iihm.imag.fr/blanch/software/osx-presentation/'
  name 'Présentation'
  homepage 'http://iihm.imag.fr/blanch/software/osx-presentation/'

  app 'Présentation.app'
  binary "#{appdir}/Présentation.app/Contents/MacOS/presentation.py", target: 'presentation'
end
