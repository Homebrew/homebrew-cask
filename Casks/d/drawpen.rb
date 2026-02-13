cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.42"
  sha256 arm:   "26805d57fd5551a43a20feb5b3bb253e97377e403b936f6c47afce04d6ed44c4",
         intel: "e4ad87367e006ba3b06db7c957b058976872975b72d2b44292d3ced3f0361864"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "DrawPen.app"

  zap trash: [
    "~/Library/Application Support/DrawPen",
    "~/Library/Logs/DrawPen",
    "~/Library/Preferences/*drawpen*.plist",
    "~/Library/Saved Application State/*DrawPen*.savedState",
  ]
end
