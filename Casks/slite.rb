cask "slite" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  version "1.2.10"
  sha256 :no_check

  url "https://download.slite.com/mac/dmg/#{arch}"
  name "Slite"
  desc "Team communication and collaboration software"
  homepage "https://slite.com/"

  livecheck do
    url "https://download.slite.com/mac/dmg/#{arch}"
    strategy :header_match
    regex(/Slite (\d+(?:\.\d+)*)\.zip/i)
  end

  app "Slite.app"

  zap trash: [
    "~/Library/Application Support/Slite",
    "~/Library/Caches/com.slite.desktop",
    "~/Library/Caches/com.slite.desktop.ShipIt",
    "~/Library/Preferences/com.slite.desktop.helper.plist",
    "~/Library/Preferences/com.slite.desktop.plist",
    "~/Library/Saved Application State/com.slite.desktop.savedState",
  ]
end
