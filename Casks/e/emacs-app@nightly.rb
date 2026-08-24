cask "emacs-app@nightly" do
  arch arm: "arm64-11", intel: "x86_64-11"

  version "2026-08-24_00-09-25,80383d8e57e1c2899dbcaccd42ca34ddd28ca3fc"
  sha256 "aa177df0c380e34af106ad2eb0f25b75d8c04730818c284c33d6f63c7e8cccc9"

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
