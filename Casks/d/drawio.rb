cask "drawio" do
  arch arm: "arm64", intel: "x64"

  version "31.1.8"
  sha256 arm:   "ff5b6239ac39a174f22d2a9fdab755a2488f923d33ec035815aa84673f367d79",
         intel: "e747822558e6b6b7222fdc741432926f9f8abbc26476211df8941a2328e79d74"

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
  depends_on macos: :monterey

  app "draw.io.app"
  command_wrapper "drawio",
                  executable: "#{appdir}/draw.io.app/Contents/MacOS/draw.io"

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
