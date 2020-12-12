cask "drawio" do
  version "13.9.9"
  sha256 "04d3134e963444e33cd3a8bb339bd1f0a049228fb78ae5722adcb62b610ff7ac"

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg",
      verified: "github.com/jgraph/drawio-desktop/"
  appcast "https://github.com/jgraph/drawio-desktop/releases.atom"
  name "draw.io Desktop"
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
