cask "emacs" do
  version "27.2-1"
  sha256 "28a252020ae7236115689f029170f2af42b4b2195eac49e277bdc81853074349"

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name "Emacs"
  desc "Extensible, customizable, free/libre text editor - and more"
  homepage "https://emacsformacosx.com/"

  livecheck do
    url "https://emacsformacosx.com/atom/release"
    strategy :page_match
    regex(%r{href=.*?/Emacs-(\d+(?:\.\d+)*(?:-\d+)?)-universal\.dmg}i)
  end

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
