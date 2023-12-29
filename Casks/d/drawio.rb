cask "drawio" do
  arch arm: "arm64", intel: "x64"

  version "22.1.16"
  sha256 arm:   "7ca43e6da351989b3311473d9286a8a09f2247ba92f21e3cbe4bbf58de88c6f7",
         intel: "3f1a1d5c86135b9e5e5388db853ce220a6b0dcb8b4ffba010af81294d8a02ecd"

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

  app "draw.io.app"

  zap trash: [
    "~/Library/Application Support/draw.io",
    "~/Library/Caches/com.jgraph.drawio.desktop",
    "~/Library/Logs/draw.io",
    "~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist",
    "~/Library/Preferences/com.jgraph.drawio.desktop.plist",
    "~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState",
    "~/Library/WebKit/com.jgraph.drawio.desktop",
  ]
end
