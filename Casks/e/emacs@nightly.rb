cask "emacs@nightly" do
  arch arm: "arm64-11", intel: "x86_64-10_12"

  version "2024-07-27_00-15-01,9e9121ed6356e02173b57ea612feb7f55c07f2c8"
  sha256 "bd7770c3aaff65838f64a7a6b8b382935926975be9549f37003fe8a0c66b8483"

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version.csv.first}-#{version.csv.second}-universal.dmg"
  name "Emacs"
  desc "GNU Emacs text editor"
  homepage "https://emacsformacosx.com/"

  livecheck do
    url "https://emacsformacosx.com/atom/daily"
    regex(/href=.*?Emacs[._-](\d+-\d+-\d+_\d+-\d+-\d+)[._-]([a-f0-9]+)[._-]universal\.dmg/i)
    strategy :page_match do |page|
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
