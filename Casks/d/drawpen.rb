cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.35"
  sha256 arm:   "7afde893961d4e1ed8745217b01ab82f4bf514948ebe0cea06c90ad3bab86389",
         intel: "c93ceb5a70df460035c703cb2e56356b01e4f1224dd1fd9753a66b966aa4bef4"

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
