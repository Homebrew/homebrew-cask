cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.0"
  sha256 arm:   "b48739053d78b05dffe881fed0aa9bcf0f50359cdf9dc0212153e2d779e8b994",
         intel: "61075a0f00558f3f8980cf86594bc71f040ebc6a7217e76dfc97f3d22f47d8a7"

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
