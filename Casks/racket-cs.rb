cask 'racket-cs' do
  version '7.6'
  sha256 'aca037891573cdfe829edf98c1d5c044d934355f11a150bce32f993233a2111f'

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
