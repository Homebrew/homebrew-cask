cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "20.2.3"

  if Hardware::CPU.intel?
    sha256 "a05b4471ba5dacb172480e46bdc73f2344495a0d40d6939fd704c7367ac20f05"
  else
    sha256 "bacd23c19088599c2a184234fcedebe0d87f185bd4497a4f4d7132dc05d64182"
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
