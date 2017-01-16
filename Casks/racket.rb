cask 'racket' do
  version '6.7'
  sha256 'abd6d9da0b09c3dc9d06e5a48ebb5e567f57ffa1584f4f262f9e6ecca9d8108a'

  # cs.utah.edu/plt/installers was verified as official when first introduced to the cask
  url "https://www.cs.utah.edu/plt/installers/#{version}/racket-#{version}-x86_64-macosx.dmg"
  name 'Racket'
  homepage 'https://racket-lang.org/'

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

  caveats <<-EOS.undent
    MacBook Pro with Touch Bar users:
    To avoid a bug in this version that prevents programs from working with the Touch Bar, use the 32-bit version or try a snapshot build:
      https://pre.racket-lang.org/installers/

    More information on the download page:
      https://download.racket-lang.org/
  EOS
end
