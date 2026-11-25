cask "diversion-app" do
  arch arm: "arm64", intel: "x64"

  version "0.10.1"
  sha256 arm:   "510e271b0d6c3a21152bb00eb437bcc68203b2317e195748766ff15000598f4b",
         intel: "552fd3cd068ce1ee2214b2488ea7c66d06c214748d59c4586b804d67d1cd73d5"

  url "https://download.todesktop.com/240506tnendbebc/Diversion%20Desktop%20#{version}-#{arch}.dmg"
  name "Diversion Desktop"
  desc "Desktop app for Diversion version control"
  homepage "https://www.diversion.dev/"

  livecheck do
    url "https://download.todesktop.com/240506tnendbebc/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on cask: "diversion"
  depends_on macos: :monterey

  app "Diversion Desktop.app"

  uninstall quit: "com.todesktop.240506tnendbebc"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.todesktop.240506tnendbebc.sfl*",
    "~/Library/Application Support/Diversion Desktop",
    "~/Library/Caches/com.todesktop.240506tnendbebc",
    "~/Library/Caches/com.todesktop.240506tnendbebc.ShipIt",
    "~/Library/Caches/diversiondesktop-updater",
    "~/Library/Logs/Diversion Desktop",
    "~/Library/Preferences/com.todesktop.240506tnendbebc.plist",
  ]
end
