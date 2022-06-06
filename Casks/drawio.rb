cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "19.0.0"

  if Hardware::CPU.intel?
    sha256 "e37fa910ccbc9e9b2f39006874b62355baf89ff090b6517ab32474f6f5b56863"
  else
    sha256 "2c0631d3fd5752930ba18ab65c6d33b548dada29ea060e0baf1b3ebfa2901178"
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
