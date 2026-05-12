cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.50"
  sha256 arm:   "3962e83428fa879c0070b1355da633c3f569a04897453c351f08cc9168e2fd6e",
         intel: "29228c5a49acb57c7ffb340c756bd7dda7e789ff4ce4320190db6e01c731dd0a"

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
