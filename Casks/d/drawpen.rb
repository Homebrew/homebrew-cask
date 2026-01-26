cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.38"
  sha256 arm:   "c606cd84cf8137fb43254980ddc8a342dcf36105dcf07dc2cbe24d833b5a6db8",
         intel: "0bac945ddbc31b283682c966edad3edda8b6793978a3f4a514e1b34d9e6b6e8f"

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
