cask 'racket-cs' do
  version '7.4'
  sha256 'f1f247d4698dcd8ee2f4562325602fadc575851638081b754b1c54e06a4931e9'

  url "https://mirror.racket-lang.org/installers/#{version}/racket-#{version}-x86_64-macosx-cs.dmg"
  appcast 'https://download.racket-lang.org/all-versions.html'
  name 'Racket on Chez Scheme'
  homepage 'https://racket-lang.org/'

  conflicts_with cask: 'racket'

  suite "Racket v#{version}"
  binary "Racket v#{version}/bin/drracket"
  binary "Racket v#{version}/bin/gracket"
  binary "Racket v#{version}/bin/gracket-text"
  binary "Racket v#{version}/bin/mred"
  binary "Racket v#{version}/bin/mred-text"
  binary "Racket v#{version}/bin/mzc"
  binary "Racket v#{version}/bin/mzpp"
  binary "Racket v#{version}/bin/mzscheme"
  binary "Racket v#{version}/bin/mztext"
  binary "Racket v#{version}/bin/pdf-slatex"
  binary "Racket v#{version}/bin/plt-games"
  binary "Racket v#{version}/bin/plt-help"
  binary "Racket v#{version}/bin/plt-r5rs"
  binary "Racket v#{version}/bin/plt-r6rs"
  binary "Racket v#{version}/bin/plt-web-server"
  binary "Racket v#{version}/bin/racket"
  binary "Racket v#{version}/bin/raco"
  binary "Racket v#{version}/bin/scribble"
  binary "Racket v#{version}/bin/setup-plt"
  binary "Racket v#{version}/bin/slatex"
  binary "Racket v#{version}/bin/slideshow"
  binary "Racket v#{version}/bin/swindle"
end
