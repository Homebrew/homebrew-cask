cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.34"
  sha256 arm:   "1fb3de589195dd9e8b37ec561b10549af513852c9fda789e10616dea4bc48c8a",
         intel: "fbcf7d8d2dba72997e0a02010e2d1cdd0b5e7a5c42b27a3ac96f3b96dd192b3d"

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
