cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.52"
  sha256 arm:   "9810d3bbc3c980c60ff05dfc8eeb97a2bf527379ed9a503ce143af03d720b90f",
         intel: "9507b02110fff5c948beafd88eea034a1bc432b4ed5e396fc34399ed7124cb30"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "DrawPen.app"

  zap trash: [
    "~/Library/Application Support/DrawPen",
    "~/Library/Logs/DrawPen",
    "~/Library/Preferences/*drawpen*.plist",
    "~/Library/Saved Application State/*DrawPen*.savedState",
  ]
end
