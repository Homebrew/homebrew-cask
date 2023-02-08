cask "siyuan" do
  arch arm: "-arm64"

  version "2.7.0"
  sha256 arm:   "40f82612e658e0499d866dce0f973124a7a59ec573dce69612bb58bc7d26cfb0",
         intel: "4a4e67724558644486ddb4e1356cffe414aeb20bbb891cb66dc9962148bd4fd3"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
