cask "drawio" do
  version "14.5.1"

  if Hardware::CPU.intel?
    sha256 "15b3e8f62473e69d7faad205e46135c08e8e444120f7596c522bf92f0df02199"
    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
  else
    sha256 "db551dbb04f41ee0be17fdc7090d210407eaff64c515e8445d670b60effa5dc9"
    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-arm64-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
  end

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
