cask 'racket-cs' do
  version '7.4.0.4,20190807-19fad3f8d9'
  sha256 'd27c9befee4b16137a0cd8caa8547cdc76df5f628739f532aa57fbcfb1b34b96'

  # cs.utah.edu/plt/snapshots was verified as official when first introduced to the cask
  url "https://www.cs.utah.edu/plt/snapshots/#{version.after_comma}/installers/racket-#{version.before_comma}-x86_64-macosx-cs.dmg"
  appcast 'https://www.cs.utah.edu/plt/snapshots/'
  name 'Racket on Chez Scheme'
  homepage 'https://racket-lang.org/'

  conflicts_with cask: 'racket'

  suite "Racket v#{version.before_comma}"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/drracket"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/gracket"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/gracket-text"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/mred"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/mred-text"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/mzc"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/mzpp"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/mzscheme"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/mztext"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/pdf-slatex"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/plt-games"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/plt-help"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/plt-r5rs"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/plt-r6rs"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/plt-web-server"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/racket"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/raco"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/scribble"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/setup-plt"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/slatex"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/slideshow"
  binary "#{appdir}/Racket v#{version.before_comma}/bin/swindle"
end
