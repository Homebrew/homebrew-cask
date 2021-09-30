cask "drawio" do
  version "15.3.8"

  if Hardware::CPU.intel?
    sha256 "b7f4e5c39a1cd17a4edd86e1116946148530e295a6b71fae09d46be9d0ab2902"
    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-x64-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
  else
    sha256 "6ac97d8e00378c73b509bf012ba3274b16fd8ddcb16d440433ed8fa841db0e53"
    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-arm64-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
  end

  name "draw.io Desktop"
  desc "Draw.io is free online diagram software"
  homepage "https://www.diagrams.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
