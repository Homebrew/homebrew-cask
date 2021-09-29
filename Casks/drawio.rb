cask "drawio" do
  version "15.3.7"

  if Hardware::CPU.intel?
    sha256 "d2d40b21956cdcab0fed0ddf9e432436dc1c68935c509463a4eac67756049239"
    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-x64-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
  else
    sha256 "cc0a0e818febfe53803d7b3457e79494b5a17329e8212594dae4941bee1d07e0"
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
