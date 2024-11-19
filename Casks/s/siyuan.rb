cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.12"
  sha256 arm:   "7fd786f70b6fae75ea83480c8d6d6cfc03ad8ce8441719621e63f570b943bc76",
         intel: "b81ecde71056f788944508a75b2deb47d5e56338d21c34007e0d3fd5647e7f7f"

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
