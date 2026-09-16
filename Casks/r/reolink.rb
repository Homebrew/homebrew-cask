cask "reolink" do
  version "8.21.12"
  sha256 :no_check

  url "https://home-cdn.reolink.us/wp-content/uploads/2026/07/230926448887f151e9d6d10f.dmg"
  name "Reolink Client"
  desc "Client for viewing and managing security cameras and NVRs"
  homepage "https://reolink.com/software-and-manual/"

  livecheck do
    url "https://cdn.reolink.com/files/client/electron-release/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Reolink.app"

  zap trash: [
    "~/Library/Application Support/com.reolink.app.client",
    "~/Library/Application Support/CrashReporter/Reolink_*.plist",
    "~/Library/Application Support/reolink",
    "~/Library/Caches/com.reolink.app",
    "~/Library/Caches/com.reolink.app.ShipIt",
    "~/Library/HTTPStorages/com.reolink.app",
    "~/Library/Logs/reolink",
    "~/Library/Preferences/ByHost/com.reolink.app.ShipIt.*.plist",
    "~/Library/Preferences/com.reolink.app.plist",
  ]
end
