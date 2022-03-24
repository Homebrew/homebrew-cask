cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.2.1"

  if Hardware::CPU.intel?
    sha256 "a3c60f824bb73f15e4a5c2b7f0a12c047fdfd672dfebb2803805cfeccdb0a588"
  else
    sha256 "cfd11d4a99a7f094c6c2d95df1a619f35c5c45b0f49cf172191209915ed884df"
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
