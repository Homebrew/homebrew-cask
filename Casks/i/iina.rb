cask "iina" do
  version "1.4.3"
  sha256 "899a15c3cee499d6e5d1a47bce02194a5a2709b3aa1c7ba82fb16a002fa81e02"

  on_macos do
    on_arm do
      depends_on macos: :monterey
    end
    on_intel do
      depends_on macos: :catalina
    end
  end

  url "https://dl.iina.io/IINA.v#{version}.dmg"
  name "IINA"
  desc "Free and open-source media player"
  homepage "https://iina.io/"

  livecheck do
    url "https://www.iina.io/appcast.xml"
    strategy :sparkle, &:short_version # IINA sometimes rebuilds with the same short version.
  end

  auto_updates true
  depends_on :macos

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
