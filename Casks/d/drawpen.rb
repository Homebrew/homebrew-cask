cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.36"
  sha256 arm:   "c605101aef11b3be9ca8cdd17888df2b5fca9d9e4abf392bee747613c0ad8607",
         intel: "a28adf26b73a5dcd4eb4d8179a376d7dee3cc53a7962120d0a061e07fd5de3fc"

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
