cask "emacs-app@nightly" do
  arch arm: "arm64-11", intel: "x86_64-11"

  version "2026-11-06_00-09-19,d4d7aeeaa6975aa0c1ab47cc51e5169f7bc90199"
  sha256 "3356f5fa6319473816d9c4a01f1fbcb1732f6a5eed3ee7236f44ccd7b3df9ea3"

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version.csv.first}-#{version.csv.second}-universal.dmg"
  name "Emacs"
  desc "GNU Emacs text editor"
  homepage "https://emacsformacosx.com/"

  livecheck do
    url "https://emacsformacosx.com/atom/daily"
    regex(/Emacs[._-]v?(\d+(?:[-_]\d+)+)[._-](\h+)[._-]universal\.dmg/i)
    strategy :xml do |xml, regex|
      xml.get_elements("/feed/entry/link").filter_map do |item|
        match = item.attributes["href"]&.match(regex)
        next unless match

        "#{match[1]},#{match[2]}"
      end
    end
  end

  conflicts_with cask: [
    "emacs-app",
    "emacs-app@pretest",
  ]
  depends_on :macos

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
