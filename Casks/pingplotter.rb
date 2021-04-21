cask "pingplotter" do
  version "5.19.5,6802"
  sha256 :no_check

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
