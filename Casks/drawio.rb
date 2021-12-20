cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "16.0.0"

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{arch}-#{version}.dmg",
      verified: "github.com/jgraph/drawio-desktop/"
  if Hardware::CPU.intel?
    sha256 "00924bd3ee5c62a5b3892fad6e092e5aca0fcbb72bb7538e9582bf1e1ece66eb"
  else
    sha256 "dc168e0d719419e2aa2fca9059915a6c2353f383a5a61a6525b2d8225c584eb1"
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
