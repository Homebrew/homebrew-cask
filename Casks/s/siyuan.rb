cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.18"
  sha256 arm:   "f7ad3886a5fa95c36d0a555c849f9cbbd2972b87db7447cfa2d013d0d00cffb2",
         intel: "0b6b71a643a908bf926febfaab5cdcb3e0b7e1c54fd2de339381370a6c5cb6f5"

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
