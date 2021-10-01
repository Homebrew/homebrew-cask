cask "drawio" do
  version "15.4.0"

  if Hardware::CPU.intel?
    sha256 "58e628ebae2c203c54d7e1ab031ffe572126d100507d06558cf48eb7455cd6cf"
    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-x64-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
  else
    sha256 "9baee8d9dce105a22e5d9c04589007fcd0a482e6d72416b033e5e4485a42ed2a"
    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-arm64-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
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
