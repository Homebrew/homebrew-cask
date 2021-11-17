cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "15.7.3"

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{arch}-#{version}.dmg",
      verified: "github.com/jgraph/drawio-desktop/"
  if Hardware::CPU.intel?
    sha256 "62e6a8afd22a100021f73fbbefb21c1751dc91a5df23da5b2a8bc7a9ccc2763c"
  else
    sha256 "f3340df9bddcd813c7b3fbdf3cd90dfcbd930d1cfffbb9c071148cb8c9a1c729"
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
