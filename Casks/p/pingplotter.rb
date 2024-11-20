cask "pingplotter" do
  version "5.25.8"
  sha256 :no_check

  url "https://www.pingplotter.com/downloads/pingplotter_osx.zip"
  name "PingPlotter"
  desc "Network monitoring tool"
  homepage "https://www.pingplotter.com/"

  livecheck do
    url "https://www.pingplotter.com/download/release-notes/"
    regex(/(\d+(?:\.\d+)+).*?h2/i)
  end

  app "PingPlotter.app"

  uninstall quit: "com.pingman.pingplotter.mac"

  zap trash: [
    "~/Library/Application Support/PingPlotter",
    "~/Library/Logs/PingPlotter",
    "~/Library/Preferences/com.pingman.pingplotter.mac.plist",
    "~/Library/Saved Application State/com.pingman.pingplotter.mac.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
