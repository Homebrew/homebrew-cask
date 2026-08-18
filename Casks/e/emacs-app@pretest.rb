cask "emacs-app@pretest" do
  arch arm: "arm64-11", intel: "x86_64-11"

  version "31.1-rc1"
  sha256 "112e56400e65d2a618c5b51e283ad63245d35e1c1524cbb4f2ce583d683c46ee"

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"
  name "Emacs"
  desc "GNU Emacs text editor"
  homepage "https://emacsformacosx.com/"

  livecheck do
    url "https://emacsformacosx.com/atom/pretest"
    regex(/Emacs[._-]pretest[._-]v?(\d+(?:[.-]\d+)+.*?)[._-]universal\.dmg/i)
    strategy :xml do |xml, regex|
      xml.get_elements("/feed/entry/link").filter_map do |item|
        item.attributes["href"]&.[](regex, 1)
      end
    end
  end

  conflicts_with cask: [
    "emacs-app",
    "emacs-app@nightly",
  ]
  depends_on macos: :big_sur

  app "Emacs.app"
  binary "#{appdir}/Emacs.app/Contents/MacOS/Emacs", target: "emacs"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin-#{arch}/ebrowse"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin-#{arch}/emacsclient"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin-#{arch}/etags"
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
