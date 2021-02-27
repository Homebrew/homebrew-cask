cask "drawio" do
  version "14.4.3"

  if Hardware::CPU.intel?
    sha256 "ac050acca9c455dddea4e9221bef22bb8a838107ee39a43ac6f673df8799dcdb"
    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
  else
    sha256 "644988e1ad2fbf7a876189ebaa97796d24c9bc5f9d3c5c335c10730d956e25c1"
    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-arm64-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
  end

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
