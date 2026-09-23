cask "stremio@beta" do
  arch arm: "arm64", intel: "x64"

  on_sequoia :or_older do
    version "5.1.27"
    sha256 arm:   "ec1364e430dada83056260d94e5c0d43aeab496cb02497980779659844fa7f69",
           intel: "14d0ea2d0b4a3bc39ebee29742627c201b5f3ca3493b876c9f56dc8fad597528"

    livecheck do
      skip "Legacy version"
    end
  end
  on_tahoe :or_newer do
    version "5.1.28"
    sha256 arm:   "cd1963dbf0c26900d8880f440a2e7e0c3841c8f58b7e23e6491f9f66d066fd3d",
           intel: "2110d399447e8bad567096b72628fe3fdbd7e1c517cd96a84eebddf4d6302d0c"

    livecheck do
      url "https://www.stremio.com/updater/check?product=stremio-shell-macos&arch=#{arch}"
      strategy :json do |json|
        json["version"]
      end
    end
  end

  url "https://dl.strem.io/stremio-shell-macos/v#{version}/Stremio_#{arch}.dmg"
  name "Stremio"
  desc "Open-source media center"
  homepage "https://www.strem.io/"

  auto_updates true
  conflicts_with cask: "stremio"
  depends_on :macos

  app "Stremio.app"

  zap trash: [
    "~/Library/Application Support/Smart Code ltd",
    "~/Library/Application Support/stremio-server",
    "~/Library/Caches/com.stremio.stremio-shell-macos",
    "~/Library/Caches/com.westbridge.stremio*-mac",
    "~/Library/Caches/Smart Code ltd",
    "~/Library/Logs/DiagnosticReports/Stremio-*.ips",
    "~/Library/Preferences/com.smartcodeltd.stremio.plist",
    "~/Library/Preferences/com.stremio.Stremio.plist",
    "~/Library/Preferences/com.westbridge.stremio*-mac.plist",
    "~/Library/Saved Application State/com.smartcodeltd.stremio.savedState",
    "~/Library/WebKit/com.stremio.stremio-shell-macos",
    "~/Library/WebKit/com.westbridge.stremio*-mac",
  ]
end
