cask "drawio" do
  arch arm: "arm64", intel: "x64"

  version "29.7.9"
  sha256 arm:   "ea26d21b6b5d47a1252ff396357b29982cb7ddebdbc6b559b68b6f6db79caaa3",
         intel: "93953989569d3ad3cf39072c928a8d3c687975f9769a0015cd6243243bd52e58"

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{arch}-#{version}.dmg",
      verified: "github.com/jgraph/drawio-desktop/"
  name "draw.io Desktop"
  desc "Online diagram software"
  homepage "https://www.diagrams.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "draw.io.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/drawio.wrapper.sh"
  binary shimscript, target: "drawio"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/draw.io.app/Contents/MacOS/draw.io' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/draw.io",
    "~/Library/Caches/com.jgraph.drawio.desktop",
    "~/Library/Caches/com.jgraph.drawio.desktop.ShipIt",
    "~/Library/Caches/draw.io-updater",
    "~/Library/HTTPStorages/com.jgraph.drawio.desktop",
    "~/Library/Logs/draw.io",
    "~/Library/Preferences/ByHost/com.jgraph.drawio.desktop.ShipIt.*.plist",
    "~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist",
    "~/Library/Preferences/com.jgraph.drawio.desktop.plist",
    "~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState",
    "~/Library/WebKit/com.jgraph.drawio.desktop",
  ]
end
