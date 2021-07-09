cask "drawio" do
  version "14.6.13"

  if Hardware::CPU.intel?
    sha256 "aaf6016b98413f14064d1c1fa3070f160172d9cb602a5cf30fc702e2ffbd37a4"
    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
  else
    sha256 "21877b5045a1c8b1d4bef5eba881620c32a302fa7d011ebccf8bd287ad9cc8f9"
    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-arm64-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
  end

  name "draw.io Desktop"
  desc "Draw.io is free online diagram software"
  homepage "https://www.draw.io/"

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
