cask "pingplotter" do
  version "5.18.2"
  sha256 "d12e65bd71ecedb6c2e61b324af4438ff1cb28b38ef9f292d6b83738af089b88"

  url "https://www.pingplotter.com/downloads/pingplotter_osx.zip"
  appcast "https://www.pingplotter.com/download"
  name "PingPlotter"
  homepage "https://www.pingplotter.com/"

  app "PingPlotter.app"

  uninstall quit: "com.pingman.pingplotter.mac"

  zap trash: [
    "~/Library/Application Support/PingPlotter",
    "~/Library/Logs/PingPlotter",
    "~/Library/Preferences/com.pingman.pingplotter.mac.plist",
    "~/Library/Saved Application State/com.pingman.pingplotter.mac.savedState",
  ]
end
