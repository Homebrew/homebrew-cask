cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.4.2"

  if Hardware::CPU.intel?
    sha256 "e20caae5e9807baf09c08e83212be5baa6b4c8c21c7dc2563ffa2a64c34b362a"
  else
    sha256 "0ca0cd7ad43d3a2ff682491356a473f31b5d85c20b1cbaf6bc99a7e0f616719e"
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
