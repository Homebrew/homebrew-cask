cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.43"
  sha256 arm:   "58fa5fa25c9e6f5c7fab62bc4f3e679cbb8f95be20315ac75f7ba4e7aadf322b",
         intel: "3ab18d81f43a2c8dc2d424f953a2c3548a6cb4eb7bce8c90c00ff5d8dad9cd8b"

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
