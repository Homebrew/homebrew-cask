cask "racket" do
  version "8.2"

  if Hardware::CPU.intel?
    sha256 "55147ccf7adf55df9586a91db6d56a2f9b47ed1cb3eda1fda87ff19b622cc383"

    url "https://mirror.racket-lang.org/installers/#{version}/racket-#{version}-x86_64-macosx-cs.dmg"
  else
    sha256 "86de0c29783a056798a0ffba7e0f00bf81a70d524dec156d47132cee2159ccb0"

    url "https://mirror.racket-lang.org/installers/#{version}/racket-#{version}-aarch64-macosx-cs.dmg"
  end

  name "Racket"
  desc "Modern programming language in the Lisp/Scheme family"
  homepage "https://racket-lang.org/"

  livecheck do
    url "https://download.racket-lang.org/all-versions.html"
    strategy :page_match
    regex(/racket-v?(\d+(?:\.\d+)*)/i)
  end

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
  manpage "#{appdir}/Racket v#{version}/man/man1/drracket.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/gracket.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/mred.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/mzc.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/mzscheme.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/plt-help.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/racket.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/raco.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/setup-plt.1"

  zap trash: [
    "~/Library/Racket",
    "~/Library/Caches/Racket",
    "~/Library/Preferences/org.racket-lang.DrRacket.plist",
    "~/Library/Preferences/org.racket-lang.prefs.rktd",
    "~/Library/Preferences/PLT-autosave-toc-save.rktd",
    "~/Library/Preferences/PLT-autosave-toc.rktd",
    "~/Library/Saved Application State/org.racket-lang.DrRacket.savedState",
    "~/Library/Saved Application State/org.racket-lang.DrRacketBC.savedState",
    "~/Library/Saved Application State/org.racket-lang.GRacket3m.savedState",
    "~/Library/Saved Application State/org.racket-lang.PLT Games.savedState",
    "~/Library/Saved Application State/org.racket-lang.Slideshow.savedState",
  ]
end
