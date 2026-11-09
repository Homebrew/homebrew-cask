cask "diversion-app" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "29fc185b4bb39b27737d984d884ba5d1f36360c931c19a7fa8b6789eb79de812",
         intel: "d56e7bfb0f3515d37fc9d8b8b75692a48fb29dc64d87eda2116d173d3e0e150d"

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
