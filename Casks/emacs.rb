cask "emacs" do
  version "27.1"
  sha256 "0ab20c654a21d78b85a4a1d89e53808e67ad558d94f1f22a4339df11cd5b866b"

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast "https://emacsformacosx.com/atom/release"
  name "Emacs"
  homepage "https://emacsformacosx.com/"

  conflicts_with formula: "emacs"

  app "Emacs.app"
  binary "#{appdir}/Emacs.app/Contents/MacOS/Emacs", target: "emacs"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ebrowse"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/emacsclient"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/etags"

  zap trash: [
    "~/Library/Caches/org.gnu.Emacs",
    "~/Library/Preferences/org.gnu.Emacs.plist",
    "~/Library/Saved Application State/org.gnu.Emacs.savedState",
  ]
end
