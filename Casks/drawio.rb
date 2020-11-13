cask "drawio" do
  version "13.9.5"
  sha256 "342fd34b7181f02ed5f01e335a3e326632d4243c5f62708d73fc61bd4c6213a6"

  # github.com/jgraph/drawio-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg"
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
