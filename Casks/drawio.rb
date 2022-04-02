cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.2.4"

  if Hardware::CPU.intel?
    sha256 "d8bb007103067554df5ed3ede73c1a3368ba8e9ce2cdc52715a12ec33fbb50ce"
  else
    sha256 "3c7e6e96c60e6538b059985bb5c09e2c9cc4fc0a84c27fda78f93d2f230bd7fd"
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
