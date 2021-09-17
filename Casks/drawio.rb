cask "drawio" do
  version "15.2.7"

  if Hardware::CPU.intel?
    sha256 "e36318f22218fc12dc02dfdcfbd54ef0dede3a024a931598a6308013e83c6d5c"
    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-x64-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
  else
    sha256 "8d9355b03817ed64a1903c1cd974ccf9e32283db75c9b9a3f3d644d5b6e0631e"
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
