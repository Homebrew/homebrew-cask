cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "19.0.2"

  if Hardware::CPU.intel?
    sha256 "0fb9bdfedecaef1720c7211ddde64a24d8b83543da2b6b7ae9e1d6872ccd17de"
  else
    sha256 "a094f5539cacb68c5b8b6af0921baa95ab97c99637a3d87820ee1c558b6c691e"
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
