cask "iina" do
  version "1.4.0,158"
  sha256 "4b9807c88d5d41caa635f0a408323ae3d80a3305476698ac2da4726136a481b8"

  url "https://dl-portal.iina.io/IINA.v#{version.csv.first}.dmg"
  name "IINA"
  desc "Free and open-source media player"
  homepage "https://iina.io/"

  livecheck do
    url "https://www.iina.io/appcast.xml"
    strategy :sparkle # IINA sometimes rebuilds with the same short version.
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "IINA.app"
  binary "#{appdir}/IINA.app/Contents/MacOS/iina-cli", target: "iina"

  uninstall quit: "com.colliderli.iina"

  zap trash: [
    "~/Library/Application Scripts/com.colliderli.iina.OpenInIINA",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl*",
    "~/Library/Application Support/com.colliderli.iina",
    "~/Library/Application Support/CrashReporter/IINA*.plist",
    "~/Library/Caches/com.colliderli.iina",
    "~/Library/Containers/com.colliderli.iina.OpenInIINA",
    "~/Library/Cookies/com.colliderli.iina.binarycookies",
    "~/Library/HTTPStorages/com.colliderli.iina",
    "~/Library/Logs/com.colliderli.iina",
    "~/Library/Logs/DiagnosticReports/IINA*.crash",
    "~/Library/Preferences/com.colliderli.iina.plist",
    "~/Library/Safari/Extensions/Open in IINA*.safariextz",
    "~/Library/Saved Application State/com.colliderli.iina.savedState",
    "~/Library/WebKit/com.colliderli.iina",
  ]
end
