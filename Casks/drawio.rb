cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "19.0.3"

  if Hardware::CPU.intel?
    sha256 "363f8f7a45a657abdc8709d56bb8b100a3ce85c0857b69e5a906476867e33eb3"
  else
    sha256 "2a68c8674272f20b71fef558dc92be20da9a90b1a22d1dbcae30d1915250c396"
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
