cask "ferdium" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "6.0.0-nightly.75"

  if Hardware::CPU.intel?
    sha256 "529a3098e74c5214f3007b8f08102f35ae2de01e488a52bfcf46cd2c0d0c30f1"
  else
    sha256 "0d07acbd203afb1953662fdb8dfd1aef7c1b1c8c1f9aac1b37ebfd0ad653034f"
  end

  url "https://github.com/ferdium/ferdium-app/releases/download/v#{version}/Ferdium-#{version}#{arch}.dmg",
      verified: "github.com/ferdium/ferdium-app/"
  name "Ferdium"
  desc "Multi-platform multi-messaging app"
  homepage "https://ferdium.org/"

  auto_updates true

  app "Ferdium.app"

  uninstall quit:   "com.ferdium.ferdium-app",
            delete: "/Library/Logs/DiagnosticReports/Ferdium Helper_.*wakeups_resource.diag"

  zap trash: [
    "~/Library/Application Support/Caches/ferdium-updater",
    "~/Library/Application Support/Ferdium",
    "~/Library/Caches/com.ferdium.ferdium-app",
    "~/Library/Caches/com.ferdium.ferdium-app.ShipIt",
    "~/Library/Logs/Ferdium",
    "~/Library/Preferences/ByHost/com.ferdium.ferdium-app.ShipIt.*.plist",
    "~/Library/Preferences/com.electron.ferdium.helper.plist",
    "~/Library/Preferences/com.electron.ferdium.plist",
    "~/Library/Preferences/com.ferdium.ferdium-app.plist",
    "~/Library/Saved Application State/com.ferdium.ferdium-app.savedState",
  ]
end
