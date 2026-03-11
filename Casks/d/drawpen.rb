cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.44"
  sha256 arm:   "e9fe983d3ba026b990c5328fee3ebe6f9cf6d0659c533d21b07a9f0423828ed9",
         intel: "53bfb898bf62a3e21c0f50116d07dcdab3dafd7fa0d10f9178c3b529850e19cb"

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
