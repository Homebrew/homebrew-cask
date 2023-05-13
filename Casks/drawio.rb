cask "drawio" do
  arch arm: "arm64", intel: "x64"

  version "21.2.8"
  sha256 arm:   "3a643a137155bd0ba4e05faaa12c7a0cae55f4a1e2feb66612120a96e51afee6",
         intel: "e04eb43688e38f846a7d1ec815a0ef42ab11b2c93f59ce19a28d03871b732732"

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{arch}-#{version}.dmg",
      verified: "github.com/jgraph/drawio-desktop/"
  name "draw.io Desktop"
  desc "Online diagram software"
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
