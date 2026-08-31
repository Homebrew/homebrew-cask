cask "emacs-app" do
  arch arm: "arm64-11", intel: "x86_64-11"

  version "31.1"
  sha256 "f0383bcbf0104947d3a46266aae43e3dc9e38fd68eeb35f11ee6b9444277b8ec"

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name "Emacs"
  desc "GNU Emacs text editor"
  homepage "https://emacsformacosx.com/"

  livecheck do
    url "https://emacsformacosx.com/atom/release"
    regex(/Emacs[._-]v?(\d+(?:[.-]\d+)+)[._-]universal\.dmg/i)
    strategy :xml do |xml, regex|
      xml.get_elements("/feed/entry/link").filter_map do |item|
        item.attributes["href"]&.[](regex, 1)
      end
    end
  end

  conflicts_with cask: [
    "emacs-app@nightly",
    "emacs-app@pretest",
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
