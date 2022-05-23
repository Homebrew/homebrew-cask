cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.0.6"

  if Hardware::CPU.intel?
    sha256 "f3bba268c70798ca896b1fc91090cefa4a9acd9a86be94ab7f2ac1f87ae2ec73"
  else
    sha256 "d6a5dad6f009a8652b83cf72c09cce557ef1bdfef78bfb9df22e71c291596d7e"
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
