cask "drawio" do
  version "14.9.6"

  if Hardware::CPU.intel?
    sha256 "34ae00228a3051b1b90028bd765cd01a631e5ee8ba312181b4ed75b6351be0c3"
    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-x64-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
  else
    sha256 "682dfda66c8c1825af70a9e02c7312e4112faeec6a3ed64fb9959dc602c0fb6b"
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
