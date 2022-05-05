cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.0.0"

  if Hardware::CPU.intel?
    sha256 "78588bf986a1f039237b731ba8fbd71b20c1656f576702050197ab56af4dec72"
  else
    sha256 "ef6258080903e37c31fe8721eea1185549104b782f1816504aaaed79094a9283"
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
