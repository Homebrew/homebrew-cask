cask "emacs" do
  version "28.1-1"
  sha256 "6a8062965e1231a4a713a625c14c473f8e7ecc9750d694100a57c38d29593587"

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
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ebrowse"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/emacsclient"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/etags"
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
