cask "pingplotter" do
  version "5.18.3"
  sha256 "3c9319636bd3eb4ded9bf5475bcc55d2bdb4a8f822ffa679a1c87b8527e3941f"

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
