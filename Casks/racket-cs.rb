cask 'racket-cs' do
  version '7.7'
  sha256 '00400bfd66f42b25b2302591d5d5f0b8a30bd34d5222b1c4a560c10c5a0335d4'

  url "https://mirror.racket-lang.org/installers/#{version}/racket-#{version}-x86_64-macosx-cs.dmg"
  appcast 'https://download.racket-lang.org/all-versions.html'
  name 'Racket on Chez Scheme'
  homepage 'https://racket-lang.org/'

  conflicts_with cask: 'racket'

  suite "Racket v#{version}"
  binary "#{appdir}/Racket v#{version}/bin/drracket"
  binary "#{appdir}/Racket v#{version}/bin/gracket"
  binary "#{appdir}/Racket v#{version}/bin/gracket-text"
  binary "#{appdir}/Racket v#{version}/bin/mred"
  binary "#{appdir}/Racket v#{version}/bin/mred-text"
  binary "#{appdir}/Racket v#{version}/bin/mzc"
  binary "#{appdir}/Racket v#{version}/bin/mzpp"
  binary "#{appdir}/Racket v#{version}/bin/mzscheme"
  binary "#{appdir}/Racket v#{version}/bin/mztext"
  binary "#{appdir}/Racket v#{version}/bin/pdf-slatex"
  binary "#{appdir}/Racket v#{version}/bin/plt-games"
  binary "#{appdir}/Racket v#{version}/bin/plt-help"
  binary "#{appdir}/Racket v#{version}/bin/plt-r5rs"
  binary "#{appdir}/Racket v#{version}/bin/plt-r6rs"
  binary "#{appdir}/Racket v#{version}/bin/plt-web-server"
  binary "#{appdir}/Racket v#{version}/bin/racket"
  binary "#{appdir}/Racket v#{version}/bin/raco"
  binary "#{appdir}/Racket v#{version}/bin/scribble"
  binary "#{appdir}/Racket v#{version}/bin/setup-plt"
  binary "#{appdir}/Racket v#{version}/bin/slatex"
  binary "#{appdir}/Racket v#{version}/bin/slideshow"
  binary "#{appdir}/Racket v#{version}/bin/swindle"
end
