cask 'presentation' do
  version '2.0'
  sha256 '871bbd6ed4eb0d3dfed4c060b11197d86bbdde2ac1dc2d8fb35cff72ff3bfce9'

  url "http://iihm.imag.fr/blanch/software/osx-presentation/releases/osx-presentation-#{version}.dmg"
  appcast 'http://iihm.imag.fr/blanch/software/osx-presentation/'
  name 'Présentation'
  homepage 'http://iihm.imag.fr/blanch/software/osx-presentation/'

  app 'Présentation.app'
  binary "#{appdir}/Présentation.app/Contents/MacOS/presentation.py", target: 'presentation'
end
