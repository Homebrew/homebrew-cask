cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.46"
  sha256 arm:   "eaa0b48465ccd4fb96500fbd5e73167ac500c241186d30c9666b651c096b169d",
         intel: "f7122c091f6d899b2f63dff559c43a2adf3eb7bd0663a51dc53b93e446ef2553"

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
