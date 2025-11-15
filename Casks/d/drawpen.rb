cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.31"
  sha256 arm:   "98c2f7dce0acdf316a6f1c1b6613c06d475b6bc911458a438d2770c548ff6417",
         intel: "267ae1e054a6d34f48883b4a2edf5027540ad99cc8533b14caba68a1c3adcae2"

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
