cask "emacs-app@nightly" do
  arch arm: "arm64-11", intel: "x86_64-11"

  version "2026-08-10_00-09-38,b157d8e96a26e7509136bf93fad2c7ec49c0ee88"
  sha256 "37e27438770faf205d1f46b27045029932c8a0a69a1682134a8bf12580de45d7"

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
