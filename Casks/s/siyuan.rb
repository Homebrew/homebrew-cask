cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.1"
  sha256 arm:   "4c99f0afacda23cc9636e0d3ccad54ea0a35ee3c537bb4ec24b2d805b371548c",
         intel: "e03b9a45b9c971006da2f6019a75a543d9ed1c1352a0407fd12d0bb2ca030f72"

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
