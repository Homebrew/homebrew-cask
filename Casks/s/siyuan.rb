cask "siyuan" do
  arch arm: "-arm64"

  version "3.3.4"
  sha256 arm:   "0e92f1a347631265cb315a4d29a4274d0047bb94a972070d7787f15b0aa0b2b0",
         intel: "6530c5c11012429bed98825bab9a127be7708c271bf4ed20783c7168b674d9d6"

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
