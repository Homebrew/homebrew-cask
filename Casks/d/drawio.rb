cask "drawio" do
  arch arm: "arm64", intel: "x64"

  version "26.0.7"
  sha256 arm:   "fa59015b9cafb5cd200f3bea06541ae3d9de0c9b3b038935be895b42cbd8358a",
         intel: "06c9f25418d9e32ab9880b348eddc1d3d2285a44fe6db110b92f0cba43ae9e0f"

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{arch}-#{version}.dmg",
      verified: "github.com/jgraph/drawio-desktop/"
  name "draw.io Desktop"
  desc "Online diagram software"
  homepage "https://www.diagrams.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "draw.io.app"

  zap trash: [
    "~/Library/Application Support/draw.io",
    "~/Library/Caches/com.jgraph.drawio.desktop",
    "~/Library/Caches/com.jgraph.drawio.desktop.ShipIt",
    "~/Library/Caches/draw.io-updater",
    "~/Library/HTTPStorages/com.jgraph.drawio.desktop",
    "~/Library/Logs/draw.io",
    "~/Library/Preferences/ByHost/com.jgraph.drawio.desktop.ShipIt.*.plist",
    "~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist",
    "~/Library/Preferences/com.jgraph.drawio.desktop.plist",
    "~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState",
    "~/Library/WebKit/com.jgraph.drawio.desktop",
  ]
end
