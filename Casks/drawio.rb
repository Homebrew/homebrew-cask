cask "drawio" do
  arch arm: "arm64", intel: "x64"

  version "20.2.8"
  sha256 arm:   "84012c9b4cc41da6b141d0ac5fd801f8b0cca2eeed202e0c356c7b7ab5f8fe60",
         intel: "e0c676e10e20d76511b2d4bd877c40e1fa719de1faf893c0aef308e4ef1a9807"

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
