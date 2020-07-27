cask "goldendict" do
  version "1.5.0-RC2,372-gc3ff15f%28Qt_5121%29"
  sha256 "bc04acbd5db51d50b8b6262d69117304df96776472b7a1df7ad42dafafe573ff"

  # downloads.sourceforge.net/goldendict/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/goldendict/GoldenDict-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast "https://sourceforge.net/projects/goldendict/rss"
  name "GoldenDict"
  homepage "http://goldendict.org/"

  depends_on macos: ">= :sierra"

  app "GoldenDict.app"
  binary "#{appdir}/GoldenDict.app/Contents/MacOS/GoldenDict"

  zap trash: [
    "~/Library/Preferences/org.goldendict.plist",
    "~/Library/Saved Application State/org.goldendict.savedState",
    "~/.goldendict",
  ]
end
