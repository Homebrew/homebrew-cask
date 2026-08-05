cask "diversion-app" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.0"
  sha256 :no_check

  url "https://get.diversion.dev/desktop/mac/#{arch}"
  name "Diversion Desktop"
  desc "Desktop app for Diversion version control"
  homepage "https://www.diversion.dev/"

  livecheck do
    url "https://download.todesktop.com/240506tnendbebc/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey
  depends_on cask: "diversion"

  app "Diversion Desktop.app"

  uninstall quit: "com.todesktop.240506tnendbebc"

  zap trash: [
    "~/Library/Application Support/Diversion Desktop",
    "~/Library/Caches/com.todesktop.240506tnendbebc",
    "~/Library/Caches/com.todesktop.240506tnendbebc.ShipIt",
    "~/Library/Caches/diversiondesktop-updater",
    "~/Library/Logs/Diversion Desktop",
    "~/Library/Preferences/com.todesktop.240506tnendbebc.plist",
  ]
end
