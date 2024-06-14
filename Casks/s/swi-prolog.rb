cask "swi-prolog" do
  version "9.2.5"
  sha256 "123d97bf225a1b2433969fc1d3541dfccb17de860075bbbbd0f136088751adae"

  url "https://www.swi-prolog.org/download/stable/bin/swipl-#{version.major_minor_patch}-1.fat.dmg"
  name "SWI-Prolog"
  desc "ISO/Edinburgh-style Prolog interpreter with GUI support"
  homepage "https://www.swi-prolog.org/"

  livecheck do
    url "https://www.swi-prolog.org/download/stable"
    regex(%r{href=.*?/swipl-(\d+(?:\.\d+)+)(?:-\d+)?\.fat\.dmg}i)
  end

  conflicts_with formula: "swi-prolog"
  depends_on cask: "xquartz"
  depends_on macos: ">= :mojave"

  app "SWI-Prolog.app"
  binary "#{appdir}/SWI-Prolog.app/Contents/MacOS/swipl"
  binary "#{appdir}/SWI-Prolog.app/Contents/MacOS/swipl-ld"
  binary "#{appdir}/SWI-Prolog.app/Contents/MacOS/swipl-win"
  manpage "#{appdir}/SWI-Prolog.app/Contents/man/swipl.1"
  manpage "#{appdir}/SWI-Prolog.app/Contents/man/swipl-ld.1"

  uninstall quit: "org.swi-prolog.app"

  zap trash: [
    "~/.config/swi-prolog",
    "~/.local/share/swi-prolog",
    "~/Library/Preferences/com.swi-prolog.pqConsole.plist",
    "~/Library/Saved Application State/org.swi-prolog.app.savedState",
  ]
end
