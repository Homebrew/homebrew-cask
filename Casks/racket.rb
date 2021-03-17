cask "racket" do
  version "8.0"

  if Hardware::CPU.intel?
    sha256 "42195d6fcc3ea6b3df91b860d2593511e6ce5f9173cfc391fb37fc67767592a9"

    url "https://mirror.racket-lang.org/installers/#{version}/racket-#{version}-x86_64-macosx-cs.dmg"
  else
    sha256 "3f1eb3c2965e2d19f0a7301049f397e3117197280f087a7bd2497bb077aadd5d"

    url "https://mirror.racket-lang.org/installers/#{version}/racket-#{version}-aarch64-macosx-cs.dmg"
  end

  appcast "https://download.racket-lang.org/all-versions.html"
  name "Racket"
  desc "Modern programming language in the Lisp/Scheme family"
  homepage "https://racket-lang.org/"

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
