cask "emacs@nightly" do
  arch arm: "arm64-11", intel: "x86_64-10_12"

  version "2025-06-02_00-09-12,8d132359d19b8efbdbd17786fa67c0c20efba35b"
  sha256 "d10099c486e0fae1dc4fe8fcf372d4886c794227d55f1c5019d22276aecbcce9"

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version.csv.first}-#{version.csv.second}-universal.dmg"
  name "Emacs"
  desc "GNU Emacs text editor"
  homepage "https://emacsformacosx.com/"

  livecheck do
    url "https://emacsformacosx.com/atom/daily"
    regex(/href=.*?Emacs[._-]v?(\d+-\d+-\d+_\d+-\d+-\d+)[._-](\h+)[._-]universal\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask:    [
                   "emacs",
                   "emacs@pretest",
                 ],
                 formula: "emacs"

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
