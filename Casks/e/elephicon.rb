cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "4.2.0"
  sha256 arm:   "d804a29ef776b2f7a860d1931fdd407c826f5f612bfb3e63db21727165ac6cd4",
         intel: "ac486f8411521cd0ccdb12c7822f21931e22a0a866ee909b5bceeabdf0a6c15c"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true
  depends_on macos: :ventura

  app "Elephicon.app"

  zap trash: [
    "~/Library/Application Support/Elephicon",
    "~/Library/Caches/jp.wassabie64.Elephicon",
    "~/Library/Caches/jp.wassabie64.Elephicon.ShipIt",
    "~/Library/Logs/Elephicon",
    "~/Library/Preferences/jp.wassabie64.Elephicon.plist",
    "~/Library/Saved Application State/jp.wassabie64.Elephicon.savedState",
  ]
end
