cask "emacs" do
  arch arm: "arm64-11", intel: "x86_64-10_11"

  version "29.2"
  sha256 "66774247bfb6f66280117bfe75b9f2134bf3279c325fa94cbe07eaed8653ee2d"

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name "Emacs"
  desc "Text editor"
  homepage "https://emacsformacosx.com/"

  livecheck do
    url "https://emacsformacosx.com/atom/release"
    regex(%r{href=.*?/Emacs[._-]v?(\d+(?:\.\d+)*(?:-\d+)?)[._-]universal\.dmg}i)
  end

  conflicts_with cask:    [
                   "homebrew/cask-versions/emacs-nightly",
                   "homebrew/cask-versions/emacs-pretest",
                 ],
                 formula: "emacs"

  app "Emacs.app"
  binary "#{appdir}/Emacs.app/Contents/MacOS/Emacs", target: "emacs"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin-#{arch}/ctags"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin-#{arch}/ebrowse"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin-#{arch}/emacsclient"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin-#{arch}/etags"
  manpage "#{appdir}/Emacs.app/Contents/Resources/man/man1/ctags.1.gz"
  manpage "#{appdir}/Emacs.app/Contents/Resources/man/man1/ebrowse.1.gz"
  manpage "#{appdir}/Emacs.app/Contents/Resources/man/man1/emacs.1.gz"
  manpage "#{appdir}/Emacs.app/Contents/Resources/man/man1/emacsclient.1.gz"
  manpage "#{appdir}/Emacs.app/Contents/Resources/man/man1/etags.1.gz"

  zap trash: [
    "~/Library/Caches/org.gnu.Emacs",
    "~/Library/Preferences/org.gnu.Emacs.plist",
    "~/Library/Saved Application State/org.gnu.Emacs.savedState",
  ]
end
