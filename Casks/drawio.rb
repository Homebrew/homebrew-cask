cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "19.0.1"

  if Hardware::CPU.intel?
    sha256 "6ca8d84c30ce7ce9dd6728f1591ea23193338f57e9111326475bbcff93e61ad9"
  else
    sha256 "9ce74275423ac8bfff2cd79c282d0ebe0fcb15afb3a8ac07432604231e12d725"
  end

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{arch}-#{version}.dmg",
      verified: "github.com/jgraph/drawio-desktop/"
  name "draw.io Desktop"
  desc "Draw.io is free online diagram software"
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
