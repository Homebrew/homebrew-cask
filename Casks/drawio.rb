cask "drawio" do
  version "14.1.8"
  sha256 "440760565c725659918ba4d7dd82939930d3b4e8f372abe1cc008e352b1da4d1"

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg",
      verified: "github.com/jgraph/drawio-desktop/"
  appcast "https://github.com/jgraph/drawio-desktop/releases.atom"
  name "draw.io Desktop"
  desc "Draw.io is free online diagram software"
  homepage "https://www.draw.io/"

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
