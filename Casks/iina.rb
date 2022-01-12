cask "iina" do
  version "1.2.0,129"
  sha256 "91b87e80055f097a1cb7a8c91979deb5303315f2067552cbe7387f48bfc42736"

  url "https://dl.iina.io/IINA.v#{version.csv.first}.dmg"
  name "IINA"
  desc "Free and open-source media player"
  homepage "https://iina.io/"

  livecheck do
    url "https://www.iina.io/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "IINA.app"
  binary "#{appdir}/IINA.app/Contents/MacOS/iina-cli", target: "iina"

  zap trash: [
    "~/Library/Application Scripts/com.colliderli.iina.OpenInIINA",
    "~/Library/Application Support/com.colliderli.iina",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl*",
    "~/Library/Application Support/CrashReporter/IINA*.plist",
    "~/Library/Caches/com.colliderli.iina",
    "~/Library/Containers/com.colliderli.iina.OpenInIINA",
    "~/Library/Cookies/com.colliderli.iina.binarycookies",
    "~/Library/Logs/com.colliderli.iina",
    "~/Library/Logs/DiagnosticReports/IINA*.crash",
    "~/Library/Preferences/com.colliderli.iina.plist",
    "~/Library/Safari/Extensions/Open in IINA*.safariextz",
    "~/Library/Saved Application State/com.colliderli.iina.savedState",
  ]
end
