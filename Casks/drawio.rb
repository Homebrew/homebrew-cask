cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "16.5.1"

  if Hardware::CPU.intel?
    sha256 "fc1fbda14530d4d4fc70df6884a2bf8c3d619e03b287da88f530e98b23ce2b4e"
  else
    sha256 "c00999e84691401a9e721a4a1772eb8d9b4318d69847003c2578ea548c779467"
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
