cask "siyuan" do
  arch arm: "-arm64"

  version "2.8.8"
  sha256 arm:   "9006a4ea3b8d28fb9aaa21e9b0a831dc509ac939f4ca380c7d0aefee7d0e659e",
         intel: "76e96abad66d74daaa46d8e6179d279c10a0668ff75151fa6b9904c4cf025893"

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
