cask 'racket' do
  version '7.4'
  sha256 'abc8143c48ffb5876a975228acc5fe324b6c56e159a09f0f6e9a2a766abbb65d'

  url "https://mirror.racket-lang.org/installers/#{version}/racket-#{version}-x86_64-macosx.dmg"
  appcast 'https://download.racket-lang.org/all-versions.html'
  name 'Racket'
  homepage 'https://racket-lang.org/'

  conflicts_with cask: 'racket-cs'

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
