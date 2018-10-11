cask 'presentation' do
  version '1.8'
  sha256 '810ecd150779399cd48a7b6f226327d1f79c42aa582efa8e6af611256f10b7aa'

  url "http://iihm.imag.fr/blanch/software/osx-presentation/releases/osx-presentation-#{version}.dmg"
  appcast 'http://iihm.imag.fr/blanch/software/osx-presentation/'
  name 'Présentation'
  homepage 'http://iihm.imag.fr/blanch/software/osx-presentation/'

  app 'Présentation.app'
  binary "#{appdir}/Présentation.app/Contents/MacOS/presentation.py", target: 'presentation'
end
