cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "16.0.2"

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{arch}-#{version}.dmg",
      verified: "github.com/jgraph/drawio-desktop/"
  if Hardware::CPU.intel?
    sha256 "e32a41c8f3c65548822794544aa1fb920a17400a3b66cc5afa953a79aa4a41a5"
  else
    sha256 "1eb36e8c43a3e378bda010d73a8d42cd388b8c3d5f62e4cf4666f776349e4e61"
  end

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
