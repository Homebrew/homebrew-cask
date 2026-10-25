cask "diversion-app" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "1d1cb2e055d610e7dce5d99b07e01851177235b470f2819d8da4da45ce93692d",
         intel: "16caedb4074317d8da220fa5b8c5f8ed76dc0d4adcb916f198905d8c8b739ccb"

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
    "~/Library/Application Support/Diversion Desktop",
    "~/Library/Caches/com.todesktop.240506tnendbebc",
    "~/Library/Caches/com.todesktop.240506tnendbebc.ShipIt",
    "~/Library/Caches/diversiondesktop-updater",
    "~/Library/Logs/Diversion Desktop",
    "~/Library/Preferences/com.todesktop.240506tnendbebc.plist",
  ]
end
