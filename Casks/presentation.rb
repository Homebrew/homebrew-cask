cask 'presentation' do
  version '1.9'
  sha256 '3c52eeca3b19ea64ead9dc07708ff9f33879617728aecc492e280a993c7804d9'

  url "http://iihm.imag.fr/blanch/software/osx-presentation/releases/osx-presentation-#{version}.dmg"
  appcast 'http://iihm.imag.fr/blanch/software/osx-presentation/'
  name 'Présentation'
  homepage 'http://iihm.imag.fr/blanch/software/osx-presentation/'

  app 'Présentation.app'
  binary "#{appdir}/Présentation.app/Contents/MacOS/presentation.py", target: 'presentation'
end
