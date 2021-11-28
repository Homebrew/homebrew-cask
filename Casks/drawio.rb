cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "15.8.4"

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{arch}-#{version}.dmg",
      verified: "github.com/jgraph/drawio-desktop/"
  if Hardware::CPU.intel?
    sha256 "a61717c988164c13c4a2c9607f998c40325e619b6911601c8b07c92cdd074c7a"
  else
    sha256 "be4b9bc59b7ff7d4f1d60c53cfb6201b510eddef6b3d76648be5dbf7ab36e954"
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
